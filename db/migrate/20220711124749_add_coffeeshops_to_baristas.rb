class AddCoffeeshopToBaristas < ActiveRecord::Migration[5.2]
  def change
    add_reference :baristas, :coffeeshop, foreign_key: true
  end
end
