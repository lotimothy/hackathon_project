class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.references :user, index: true
      t.integer :steps
      t.date :date

      t.timestamps null: false
    end
    add_foreign_key :histories, :users
  end
end
