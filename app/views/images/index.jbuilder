json.array! @images do |image|
  json.id image.id
  json.image_url image.image_url
  json.count_of_favorites image.count_of_favorites
  json.count_of_favorites image.count_of_favorites
  json.created_at image.created_at
  json.updated_at image.updated_at
end
