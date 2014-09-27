class Album < ActiveRecord::Base
  validates :user_id, :title, :description, presence: true

  has_many :images, dependent: :destroy
  has_many :comments, as: :commentable
  has_many :favorites, as: :favoritable
  belongs_to :user

end
