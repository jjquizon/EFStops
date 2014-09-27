json.extract! @image, :id, :title, :description, :album_id, :image_url, :created_at, :updated_at

json.comments @image.comments do |comment|
  json.extract! comment, :id, :content, :commentable_id, :commentable_type, :user_id, :created_at, :updated_at
  json.username comment.user.username
end

json.favorites @image.favorites do |favorite|
  json.extract! favorite, :id, :user_id
  json.username favorite.user.username
end
