json.extract! @user, :id, :username, :created_at, :updated_at, :avatar_url,
  :count_of_followers, :count_of_followed, :count_of_albums, :cover_photo_url
json.count_of_images @user.images.count

json.albums @user.albums do |album|
  json.extract! album, :id, :title, :description, :created_at,
                       :updated_at, :cover_image_url, :count_of_images
end

json.images @user.images do |image|
  json.extract! image, :id, :title, :image_tag, :image_url,
                       :image_tag, :created_at, :updated_at
  json.owner image.user.username
  json.favorite image.favorites
end

json.favorite_images @user.favorite_images.includes([:favoritable => [:user]]) do |favorite|
  json.extract! favorite.favoritable, :id, :title, :image_url
  json.owner favorite.favoritable.user.username
end

json.followers @user.followed_users do |followed_user|
  json.extract! followed_user, :id, :username
end

json.follows @user.followers do |follower|
  json.extract! follower, :id, :username
end
