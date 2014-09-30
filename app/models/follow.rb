class Follow < ActiveRecord::Base
  validates :follower_id, :followed_id, presence: true
  validate :id_check, on: :create

  belongs_to :follower, class_name: "User", counter_cache: :count_of_followed
  belongs_to :followed, class_name: "User", counter_cache: :count_of_followers

  def id_check
    if follower_id == followed_id
      errors.add(:follower_id, "cannot be the same as followed_id")
    end
  end

end
