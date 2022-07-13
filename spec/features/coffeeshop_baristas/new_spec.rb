require 'rails_helper'

RSpec.describe 'user can visit coffeeshops index', type: :feature do
	xit 'can add a new barista to its parent' do
		coffeeshop_1 = Coffeeshop.create( name: 'Cafe Olay',
                                  capacity: 30,
                                  outdoor_seating: true)

		visit 'coffeeshop'

		expect(current_path).to eq("/coffeeshops/#{coffeeshop_1.id}/baristas/new")
	end
end
