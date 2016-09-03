class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.date :start_date
      t.integer :duration
      t.string :name
      t.text :description
      t.integer :steps
      t.integer :type
      t.references :user, index: true
      t.integer :reward

      t.timestamps null: false
    end
    add_foreign_key :missions, :users
  end
end
