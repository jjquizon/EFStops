class Album < ActiveRecord::Base
  after_initialize :ensure_cover_img
  validates :user_id, :title, :description, :cover_image_url, presence: true


  has_many :images, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :favorites, as: :favoritable, dependent: :destroy
  belongs_to :user, counter_cache: :count_of_albums

  def ensure_cover_img
    self.cover_image_url ||= "assets/untitled_album.jpg"
  end
end
