json.extract! @user, :id, :username, :created_at, :updated_at, :filepicker_url

json.page_number params[:page]
json.total_pages @feed.total_pages

json.followers_images @feed.each do |followed|
  json.array! followed.images.each do |image|
    json.title image.title
    json.description image.description
    json.image_id image.id
    json.image_url image.image_url
    json.created_at image.created_at
    json.count_of_comments image.count_of_comments
    json.count_of_favorites  image.count_of_favorites
    json.user_id followed.id
    json.username followed.username
    json.filepicker_url followed.filepicker_url
  end
end
