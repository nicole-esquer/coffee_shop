class Coffeeshop < ApplicationRecord
   validates_presence_of :name, :capacity
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

  def filter_by_hours_worked(hours_worked_filter)
    baristas.where("hours_worked >= #{hours_worked_filter}")
  end
end