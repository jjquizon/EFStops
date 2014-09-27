class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id, null: false
      t.references :favoritable, polymorphic: true
      t.timestamps
    end
  end
end
