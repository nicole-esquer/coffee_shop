class Barista < ApplicationRecord
   validates_presence_of :name, :hours_worked
   belongs_to :coffeeshop
end