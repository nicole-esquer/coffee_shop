require 'rails_helper'

RSpec.describe 'user can visit the coffeeshop index' do

	xit'user can create a new coffeeshop'do
		visit "/coffeeshops"
		click_link("New Coffeeshop")

		expect(current_path).to eq("/coffeeshops/new")


		expect(page).to have_content("Enter a new coffeeshop:")
      expect(page).to have_content("Name: ")
      expect(page).to have_content("Outdoor Seating? ")
      expect(page).to have_content("Capacity")
	end

	xit 'user can create a coffeeshop' do
		visit "/coffeeshops"
		click_link("New Coffeeshop")

      fill_in('coffeeshop[name]', with: 'Roasted')
      check('coffeeshop[outdoor_seating]')
      fill_in('coffeeshop[capacity]', with: '20')
      click_button('Create Coffeeshop')

    expect(page).to have_content('Roasted')
	end
end