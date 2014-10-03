json.images @images.each do |image|
  json.id image.id
  json.image_url image.image_url
  json.image_tag image.image_tag
  json.title image.title
  json.owner image.user.username
  json.count_of_favorites image.count_of_favorites
  json.count_of_favorites image.count_of_favorites
  json.created_at image.created_at
  json.updated_at image.updated_at
end
