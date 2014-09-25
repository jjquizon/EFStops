json.array! @albums do |album|
  json.id album.id
  json.user_id album.user_id
  json.title album.title
  json.description album.description
  json.created_at album.created_at
  json.updated_at album.updated_at
end
