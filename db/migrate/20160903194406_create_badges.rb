class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name
      t.string :image
      t.integer :minimum
      t.references :mission, index: true

      t.timestamps null: false
    end
    add_foreign_key :badges, :missions
  end
end
