class Image < ActiveRecord::Base

  attr_accessor :user_id, :username, :filepicker_url
  validates :image_url, :title, :description, :image_tag, :album_id, presence: true
  # validates :image_url, uniqueness: true
  # ENABLE UNIQUE URL BEFORE SENDING UP

  belongs_to :album, counter_cache: :count_of_images
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :favorites, as: :favoritable, dependent: :destroy

end
