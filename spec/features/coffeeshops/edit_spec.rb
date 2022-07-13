require 'rails_helper'
RSpec.describe 'user can go to coffeeshop index' do
	xit 'I can update a given coffeeshop' do
		coffeeshop_1 = Coffeeshop.create(name: 'Cafe Olay',
                                       capacity: 30,
                                       outdoor_seating: true)
		visit '/coffeeshops'
		click_link('Cafe Olay')
		expect(page).to have_link(href: "/coffeeshops/#{coffeeshop_1.id}/edit")
		click_link('Edit')

		expect(current_path).to eq("/coffeeshops/#{coffeeshop_1.id}/edit")
      expect(page).to have_content("Edit")

   	fill_in('coffeeshop[name]', with: 'Roasted')
      check('coffeeshop[outdoor_seating]')
      fill_in('coffeeshop[capacity]', with: '20')
      click_button('Update Coffeeshop')

      expect(current_path).to eq("/coffeeshops/#{coffeeshop_1.id}")
      expect(page).to have_content("Name: Roasted")
      expect(page).to have_content("Open: true")
      expect(page).to have_content("Capacity: 20")
	end
end