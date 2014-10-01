class AddCoverPhotoForUser < ActiveRecord::Migration
  def change
    add_column :users, :cover_photo_url, :string
    change_column :users, :cover_photo_url, :string, default: "assets/default_cover.jpg", null: false
  end
end
