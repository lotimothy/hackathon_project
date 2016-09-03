class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :user, index: true
      t.references :mission, index: true
      t.boolean :complete

      t.timestamps null: false
    end
    add_foreign_key :groups, :users
    add_foreign_key :groups, :missions
  end
end
