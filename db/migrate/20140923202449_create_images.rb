class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url , null: false
      t.string :title, default: 'Untitled'
      t.string :image_tag, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_index :images, :image_url, unique: true
  end
end
