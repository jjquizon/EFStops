class Image < ActiveRecord::Base

  validates :image_url, :title, :description, :image_tag, :user_id, presence: true
  validates :image_url, uniqueness: true

  belongs_to :album
end
