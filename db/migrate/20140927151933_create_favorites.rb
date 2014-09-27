class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id, null: false
      t.references :favoritable, polymorphic: true
      t.timestamps
    end
    add_index :favorites, [:user_id, :favoritable_id, :favoritable_type], unique: true, name: :index_user_and_favoritables
  end
end
