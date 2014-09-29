class RemoveImageUrlIndex < ActiveRecord::Migration
  def change
    remove_index :images, :image_url
  end
end
