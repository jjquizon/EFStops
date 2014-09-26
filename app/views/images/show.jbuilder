json.extract! @image, :id, :title, :image_tag, :image_url, :album_id, :created_at, :updated_at

json.comments @image.comments do |comment|
  json.extract! comment, :id, :content, :commentable_id, :commentable_type, :user_id, :created_at, :updated_at
end
