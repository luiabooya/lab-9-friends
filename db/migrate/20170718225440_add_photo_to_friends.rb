class AddPhotoToFriends < ActiveRecord::Migration[5.0]
  def change
    add_column :friends, :photo, :string
  end
end
