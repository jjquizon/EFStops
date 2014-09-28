class Favorite < ActiveRecord::Base
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :favoritable, polymorphic: true, counter_cache: :count_of_favorites
end
