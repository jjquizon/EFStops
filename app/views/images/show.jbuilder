json.extract! @image, :id, :title, :description, :album_id, :image_url, :image_tag,
  :created_at, :updated_at, :count_of_comments, :count_of_favorites
json.owner @image.user.username
json.owner_avatar_url @image.user.avatar_url
json.album_title @image.album.title
json.album_cover_img_url @image.album.cover_image_url

json.comments @image.comments do |comment|
  json.extract! comment, :id, :content, :commentable_id, :commentable_type, :user_id, :created_at, :updated_at
  json.username comment.user.username
  json.avatar_url comment.user.avatar_url
end

json.favorites @image.favorites do |favorite|
  json.extract! favorite, :id, :user_id
  json.username favorite.user.username
end
