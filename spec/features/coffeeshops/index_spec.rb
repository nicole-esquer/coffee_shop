require 'rails_helper'

RSpec.describe 'when user visits the coffeeshop index', type: :feature do
   xit 'can see all of the coffeeshops names' do
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

   xit 'can create a new coffeeshop' do
		visit '/coffeeshops'

		expect(page).to have_link(href: '/coffeeshops/new')

		click_link 'New Coffeeshop'

      expect(page).to have_current_path('/coffeeshops/new')
	end

	xit 'can edit a coffeeshop' do
      coffeeshop_1 = Coffeeshop.create(name: 'Cafe Olay',
                                       capacity: 30,
                                       outdoor_seating: true)

      coffeeshop_2 = Coffeeshop.create(name: 'Gentle Beans',
                                       capacity: 20,
                                       outdoor_seating: false)

      visit 'coffeeshops'
      expect(page).to have_link(href: "/coffeeshops/#{coffeeshop_1.id}/edit")
      expect(page).to have_link(href: "/coffeeshops/#{coffeeshop_2.id}/edit")

      click_link("Edit Cafe Olay")

      expect(current_path).to eq("/coffeeshops/#{coffeeshop_1.id}/edit")

    	fill_in('coffeeshop[name]', with: 'Cafe Olé')
    	fill_in('coffeeshop[capacity]', with: '15')
    	click_button('Update Coffeeshop')

      expect(current_path).to eq("/coffeeshops/#{coffeeshop_1.id}")
      expect(page).to have_content("Name: Cafe Olé")
      expect(page).to have_content("outdoor_seating: true")
      expect(page).to have_content("Capacity: 15")
  end

  xit 'displays a delete button next to each element to destroy it' do
      coffeeshop_1 = Coffeeshop.create(name: 'Cafe Olay',
                                       capacity: 30,
                                       outdoor_seating: true)

      coffeeshop_2 = Coffeeshop.create(name: 'Gentle Beans',
                                       capacity: 20,
                                       outdoor_seating: false)

      visit 'coffeeshops'

      expect(page).to have_button("Delete #{coffeeshop_1.name}")
      expect(page).to have_button("Delete #{coffeeshop_2.name}")

      click_button("Delete Cafe Olay")

      expect(page).not_to have_content("Cafe Olay")
      expect(current_path).to eq("/coffeeshops")
    end
end