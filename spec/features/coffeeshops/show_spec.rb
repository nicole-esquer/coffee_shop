require 'rails_helper'

RSpec.describe 'when user visits the coffeeshop index', type: :feature do
   it 'displays all information for selected coffeeshop' do
      Coffeeshop.destroy_all

      coffeeshop_1 = Coffeeshop.create( name: 'Cafe Olay',
                                        capacity: 30,
                                        outdoor_seating: true)

      coffeeshop_2 = Coffeeshop.create( name: 'Gentle Beans',
                                        capacity: 20,
                                        outdoor_seating: false)
      
      visit "/coffeeshops/#{coffeeshop.id}"
      
      expect(page).to have_content(coffeeshop_1.capacity)
      expect(page).to have_content(coffeeshop_1.outdoor_seating)
      expect(page).to have_content(coffeeshop_2.capacity)
      expect(page).to have_content(coffeeshop_2.outdoor_seating)
   end
end