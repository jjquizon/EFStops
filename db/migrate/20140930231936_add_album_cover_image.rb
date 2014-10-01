class AddAlbumCoverImage < ActiveRecord::Migration
  def change
    add_column :albums, :cover_image_url, :string
    change_column :albums, :cover_image_url, :string, null: false
  end
end
