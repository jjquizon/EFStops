class Album < ActiveRecord::Base
  validates :user_id, :title, :description, presence: true

  has_many :images, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :favorites, as: :favoritable, dependent: :destroy
  belongs_to :user, counter_cache: :count_of_albums

end
