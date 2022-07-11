require 'rails_helper'

RSpec.describe 'when user visits the baristas index page', type: :feature do
  describe 'shows all baristas' do
    it 'shows data for all baristas' do
         coffeeshop_1 = Coffeeshop.create( name: 'Cafe Olay',
                                  capacity: 30,
                                  outdoor_seating: true)
  
         employee_1 = coffeeshop_1.baristas.create(name: 'Margarita',
                                                full_time: false,
                                                hours_worked: 20)

         employee_2 = coffeeshop_1.baristas.create(name: 'Diane',
                                                full_time: true,
                                                hours_worked: 32)
     

         visit '/baristas'

         expect(page).to have_content(employee_1.name)
         expect(page).to have_content(employee_1.hours_worked)
         expect(page).to have_content(employee_2.name)
         expect(page).to have_content(employee_2.hours_worked)
      end
   end
end