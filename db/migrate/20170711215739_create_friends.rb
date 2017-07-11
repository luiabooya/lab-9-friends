class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :nickname
      t.string :email
      t.string :phone
      t.string :website
      t.integer :level

      t.timestamps
    end
  end
end
