class Coffeeshop < ApplicationRecord
   validates :name, :capacity, :outdoor_seating
   has_many :baristas

   def self.order_created_at_desc
    order(created_at: :desc)
  end

  def barista_count
  	baristas.length
  end

   def sort_by_name
  	baristas.order("lower(name)")
  end
end