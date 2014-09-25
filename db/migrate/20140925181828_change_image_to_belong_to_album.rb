class ChangeImageToBelongToAlbum < ActiveRecord::Migration
  def change
    remove_column :images, :user_id
    add_column :images, :album_id, :integer
    change_column_null :images, :album_id, false

    add_column :images, :description, :text
    change_column_default :images, :description, "No description"

    change_column :albums, :description, :text

  end
end
