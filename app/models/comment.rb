class Comment < ActiveRecord::Base
  validates :content, :commentable_id, :commentable_type, :user_id, presence: true
  belongs_to :commentable, polymorphic: true, counter_cache: :count_of_comments
  belongs_to :user


end
