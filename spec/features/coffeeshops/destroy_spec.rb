require 'rails_helper'

RSpec.describe 'user visits coffeeshop index', type: :feature do
  xit 'can delete a coffeeshop' do
   

 	coffeeshop_1 = coffeeshop.create(name: 'Cafe Olay',
                                    capacity: 30,
                                    outdoor_seating: true)
  
    visit "/coffeeshops"
    click_link("Cafe Olay")

    expect(current_path).to eq("/coffeeshops/#{coffeeshop_1.id}")
    expect(page).to have_link(href: "/coffeeshops/#{coffeeshop_1.id}")

    click_link("delete")

    expect(current_path).to eq("/coffeeshops")
    expect(page).not_to have_content("Cafe Olay")
  end
end