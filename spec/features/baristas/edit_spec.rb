require 'rails_helper'

RSpec.describe 'when user visits barista show page' do
	xit 'update a given barista' do
		coffeeshop_1 = Coffeeshop.create(name: 'Cafe Olay',
                                  capacity: 30,
                                  outdoor_seating: true)
  
      barista_1 = coffeeshop_1.baristas.create(name: 'Margarita',
                                                full_time: false,
                                                hours_worked: 20)

		visit "/coffeeshops/#{coffeeshop_1.id}/baristas"
		click_link("Margarita")
		click_link('Edit')


		expect(current_path).to eq("/baristas/#{barista_1.id}/edit")
      expect(page).to have_content("Edit")

   	fill_in('barista[name]', with: 'Ana')
      check('barista[full_time]')
      fill_in('barista[hours_worked]', with: '40')
      click_button('Update Barista')

      expect(current_path).to eq("/baristas/#{barista_1.id}")
      expect(page).to have_content("Ana")
	end
end