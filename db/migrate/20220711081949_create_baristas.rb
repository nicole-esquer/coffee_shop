class CreateBaristas < ActiveRecord::Migration[5.2]
  def change
    create_table :baristas do |t|
      t.string :name
      t.boolean :full_time
      t.integer :hours_worked

      t.timestamps
    end
  end
end
