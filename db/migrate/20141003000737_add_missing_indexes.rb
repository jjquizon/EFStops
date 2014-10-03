class AddMissingIndexes < ActiveRecord::Migration
  def change
    add_index :albums, :user_id
    add_index :comments, [:commentable_id, :commentable_type]
    add_index :comments, :user_id
    add_index :images, :album_id
  end
end
