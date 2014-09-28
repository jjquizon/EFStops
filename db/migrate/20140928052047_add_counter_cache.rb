class AddCounterCache < ActiveRecord::Migration
  def change
    add_column :users, :count_of_followers, :integer, default: 0
    add_column :users, :count_of_followed, :integer, default: 0
    add_column :users, :count_of_albums, :integer, default: 0
    add_column :users, :count_of_images, :integer, default: 0
    add_column :albums, :count_of_images, :integer, default: 0
    add_column :albums, :count_of_favorites, :integer, default: 0
    add_column :albums, :count_of_comments, :integer, default: 0
    add_column :images, :count_of_favorites, :integer, default: 0
    add_column :images, :count_of_comments, :integer, default: 0

  end
end
