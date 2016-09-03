class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :handle
      t.string :firebase_id
      t.string :email
      t.integer :health
      t.integer :type
      t.string :api_id

      t.timestamps null: false
    end
  end
end
