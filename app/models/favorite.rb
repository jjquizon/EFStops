class Favorite < ActiveRecord::Base
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :favoritable, polymorphic: true
end
