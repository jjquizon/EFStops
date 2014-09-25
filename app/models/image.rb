class Image < ActiveRecord::Base

  validates :image_url, :title, :description, :image_tag, :album_id, presence: true
  # validates :image_url, uniqueness: true
  # ENABLE UNIQUE URL BEFORE SENDING UP

  belongs_to :album
end
