json.extract! @album, :id, :title, :description, :user_id, :created_at, :updated_at

json.images @album.images do |image|
  json.extract! image, :id, :image_url, :title, :description, :album_id, :created_at, :updated_at
end
