require 'rails_helper'

RSpec.describe 'when user visits the baristas show page' do
	it 'user can view attributes for a specific barista' do
		coffeeshop_1 = Coffeeshop.create( name: 'Cafe Olay',
                                  capacity: 30,
                                  outdoor_seating: true)
  
      employee_1 = coffeeshop_1.baristas.create(name: 'Margarita',
                                                full_time: false,
                                                hours_worked: 20)

      employee_2 = coffeeshop_1.baristas.create(name: 'Diane',
                                                full_time: true,
                                                hours_worked: 32)
     

      visit "/baristas/#{coffeeshop_1.id}/baristas"

      expect(page).to have_content(barista_1.name)
      expect(page).to have_content(barista_1.full_time)
      expect(page).to have_content(barista_1.hours_worked)
      expect(page).to have_content(barista_2.name)
      expect(page).to have_content(barista_2.full_time)
      expect(page).to have_content(barista_2.hours_worked)
	end
end