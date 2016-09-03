class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.references :user, index: true
      t.integer :friend_id

      t.timestamps null: false
    end
    add_foreign_key :friends, :users
  end
end
