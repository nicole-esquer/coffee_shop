require 'rails_helper'

RSpec.describe 'when user visits the baristas index page', type: :feature do
  describe 'shows all baristas' do
    xit 'shows data for all baristas' do
         coffeeshop_1 = Coffeeshop.create(name: 'Cafe Olay',
                                  capacity: 30,
                                  outdoor_seating: true)
  
         barista_1 = coffeeshop_1.baristas.create(name: 'Margarita',
                                                full_time: false,
                                                hours_worked: 20)

         barista_2 = coffeeshop_1.baristas.create(name: 'Diane',
                                                full_time: true,
                                                hours_worked: 32)
     

         visit "/baristas"

         expect(page).to have_content(barista_1.name)
         expect(page).to have_content(barista_1.hours_worked)
         expect(page).to have_content(barista_2.name)
         expect(page).to have_content(barista_2.hours_worked)
      end

      xit 'has a link to edit a barista' do
         coffeeshop_1 = Coffeeshop.create(name: 'Cafe Olay',
                                  capacity: 30,
                                  outdoor_seating: true)
  
         barista_1 = coffeeshop_1.baristas.create(name: 'Margarita',
                                                full_time: false,
                                                hours_worked: 20)

         barista_2 = coffeeshop_1.baristas.create(name: 'Diane',
                                                full_time: true,
                                                hours_worked: 32)
     

         visit "/baristas"

         expect(page).to have_link(href: "/baristas/#{barista_1.id}/edit")
         expect(page).to have_link(href: "/baristas/#{barista_2.id}/edit")

         click_link("Edit Margarita")

         fill_in('barista[name]', with: 'Ana')
         check('barista[full_time]')
         fill_in('barista[hours_worked]', with: '40')
         click_button('Update barista')

         expect(current_path).to eq("/baristas/#{barista_1.id}")
         expect(page).to have_content("Ana")
    end

    xit 'has a button to delete a barista' do
         coffeeshop_1 = Coffeeshop.create(name: 'Cafe Olay',
                                  capacity: 30,
                                  outdoor_seating: true)
  
         barista_1 = coffeeshop_1.baristas.create(name: 'Margarita',
                                                full_time: false,
                                                hours_worked: 20)

         barista_2 = coffeeshop_1.baristas.create(name: 'Diane',
                                                full_time: true,
                                                hours_worked: 32)
   
         visit "/baristas"

         expect(page).to have_button("Delete #{barista_1.name}")
         expect(page).to have_button("Delete #{barista_2.name}")

         click_button("Delete Margarita")

         expect(page).not_to have_content("Margarita")
         expect(current_path).to eq("/baristas")
      end
   end
end