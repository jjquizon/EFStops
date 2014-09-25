class Album < ActiveRecord::Base
  validates :user_id, :title, :description, presence: true

  has_many :images
  belongs_to :user


end
