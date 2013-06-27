class CreateFoos < ActiveRecord::Migration
  def change
    create_table :foos do |t|
      t.string :name
      t.integer :number
      t.boolean :is_happy
      t.datetime :foo_date

      t.timestamps
    end
  end
end
