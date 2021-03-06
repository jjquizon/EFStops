json.page_number params[:page]
json.total_pages @feed.total_pages

json.followed_images @feed.each do |image|
    json.title image.title
    json.description image.description
    json.image_id image.id
    json.image_url image.image_url
    json.created_at image.created_at
    json.count_of_comments image.count_of_comments
    json.count_of_favorites  image.count_of_favorites
    json.user_id image.user_id
    json.username image.username
    json.avatar_url image.avatar_url
end
