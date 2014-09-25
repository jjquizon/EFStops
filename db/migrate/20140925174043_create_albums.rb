class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, default: "untitled"
      t.string :description, default: "No description"
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
