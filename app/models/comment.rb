class Comment < ActiveRecord::Base
  validates :content, :commentable_id, :commentable_type, :user_id, presence: true
  belongs_to :commentable, polymorphic: true
  belongs_to :user


end
