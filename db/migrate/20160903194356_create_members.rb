class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.references :group, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :members, :groups
    add_foreign_key :members, :users
  end
end
