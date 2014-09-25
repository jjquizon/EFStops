json.extract! @user, :id, :username, :created_at, :updated_at, :filepicker_url

json.albums @user.albums do |album|
  json.extract! album, :id, :title, :description, :created_at, :updated_at
end

json.images @user.images do |image|
  json.extract! image, :id, :title, :image_tag, :image_url, :image_tag, :created_at, :updated_at
end
