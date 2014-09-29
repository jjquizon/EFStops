class User < ActiveRecord::Base

  after_initialize :ensure_session_token, :ensure_avatar
  validates :username, :email, :session_token, :filepicker_url, presence: true
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
    if self.filepicker_url.nil? || self.filepicker_url == ""
      self.filepicker_url = "assets/unknown.jpg"
    else
      return self.filepicker_url
    end
  end

  def feed
    self.followed_users
  end




  protected
  attr_reader :password
end
