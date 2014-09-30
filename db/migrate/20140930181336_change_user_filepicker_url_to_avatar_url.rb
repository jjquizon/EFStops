class ChangeUserFilepickerUrlToAvatarUrl < ActiveRecord::Migration
  def change
    remove_column :users, :filepicker_url
    add_column :users, :avatar_url, :string, null: false
  end
end
