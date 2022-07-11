require 'rails_helper'

RSpec.describe 'when user visits the coffeeshop index', type: :feature do
   it 'can see all of the coffeeshops names' do
      Coffeeshop.destroy_all

      coffeeshop_1 = Coffeeshop.create( name: 'Cafe Olay',
                                        capacity: 30,
                                        outdoor_seating: true)

      coffeeshop_2 = Coffeeshop.create( name: 'Gentle Beans',
                                        capacity: 20,
                                        outdoor_seating: false)

      created_at_1 = coffeeshop_1.created_at.strftime("%m/%d/%Y %I:%M %p")
	   created_at_2 = coffeeshop_2.created_at.strftime("%m/%d/%Y %I:%M %p")
      
      visit '/coffeeshops'

      expect(page).to have_content(coffeeshop_1.name)
      expect(page).to have_content(coffeeshop_2.name)

      expect(page).to have_content(created_at_1)
      expect(page).to have_content(created_at_2)

   end
end