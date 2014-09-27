json.array! @favorites do |favorite|
  json.id favorite.id
  json.user_id favorite.user_id
  json.favoritable_id favorite.favoritable_id
  json.favoritable_type favorite.favoritable_type
  json.created_at favorite.created_at
  json.updated_at favorite.updated_at
end
