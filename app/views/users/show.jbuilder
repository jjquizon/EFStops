json.extract! @user, :id, :username, :created_at, :updated_at, :filepicker_url,
  :count_of_followers, :count_of_followed, :count_of_albums, :count_of_images

json.albums @user.albums do |album|
  json.extract! album, :id, :title, :description, :created_at, :updated_at
end

json.images @user.images do |image|
  json.extract! image, :id, :title, :image_tag, :image_url, :image_tag, :created_at, :updated_at
end

json.favorites @user.favorites do |favorite|
  json.extract! favorite, :id, :favoritable_type, :favoritable_id
end

json.followers @user.followed_users do |followed_user|
  json.extract! followed_user, :id, :username
end

json.follows @user.followers do |follower|
  json.extract! follower, :id, :username
end
