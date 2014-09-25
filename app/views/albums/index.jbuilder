json.albums @albums do |album|
  json.extract! album, :id, :user_id, :title, :description, :created_at, :updated_at
end
