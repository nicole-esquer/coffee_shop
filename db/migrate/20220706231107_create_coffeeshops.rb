class CreateCoffeeshops < ActiveRecord::Migration[5.2]
  def change
    create_table :coffeeshops do |t|
      t.string :name
      t.integer :capacity
      t.boolean :outdoor_seating
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
