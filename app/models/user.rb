class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :username, use: :slugged

  after_initialize :ensure_session_token, :ensure_avatar, :ensure_cover_photo
  validates :username, :email, :session_token, :avatar_url, presence: true
  validates :cover_photo_url, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }

  has_many :images, through: :albums
  has_many :albums, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_many :follows, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :follows, source: :followed

  has_many :reverse_follows, class_name: "Follow",
            foreign_key: "followed_id", dependent: :destroy
  has_many :followers, through: :reverse_follows, source: :follower


  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)

    if user
      user.is_password?(password) ? user : nil
    end
  end

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end

  def reset_session_token
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def ensure_avatar
    if self.avatar_url.nil? || self.avatar_url == ""
      self.avatar_url = "assets/unknown.jpg"
    else
      return self.avatar_url
    end
  end

  def ensure_cover_photo
    self.cover_photo_url ||= "assets/default_cover.jpg"
  end

  def feed
    images = [];
    self.followed_users.includes(:images).each do |user|
      user.images.each do |image|
        image.user_id = user.id
        image.username = user.username
        image.avatar_url = user.avatar_url
        images << image
      end
    end

    sorted_images = images.sort do |image1, image2|
      image2.created_at <=> image1.created_at
    end

    sorted_images
  end

  def favorite_images
    image_favorites = self.favorites.includes([:favoritable => :user])
                          .where("favoritable_type = ?", "Image")
  end

  protected
  attr_reader :password
end
