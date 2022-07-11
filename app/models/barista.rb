class Barista < ApplicationRecord
   validates :name, :full_time, :hours_worked
   belongs_to :theater
end