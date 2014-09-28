json.extract! @album, :id, :title, :description, :user_id, :created_at,
  :updated_at, :count_of_images, :count_of_favorites, :count_of_comments

json.comments @album.comments do |comment|
  json.extract! comment, :id, :content, :commentable_id, :commentable_type, :user_id, :created_at, :updated_at
  json.username comment.user.username
end

json.images @album.images do |image|
  json.extract! image, :id, :image_url, :title, :description, :album_id, :created_at, :updated_at
end

json.favorites @album.favorites do |favorite|
  json.extract! favorite, :id, :user_id
  json.username favorite.user.username
end
