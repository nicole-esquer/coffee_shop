# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Coffeeshop.destroy_all
Barista.destroy_all

coffeeshop_1 = Coffeeshop.create( name: 'Cafe Olay',
                                  capacity: 30,
                                  outdoor_seating: true)

coffeeshop_2 = Coffeeshop.create( name: 'Gentle Beans',
                                  capacity: 20,
                                  outdoor_seating: false)

barista_1 = coffeeshop_1.baristas.create(name: 'Margarita',
                                         full_time: false,
                                         hours_worked: 20)

barista_2 = coffeeshop_1.baristas.create(name: 'Diane',
                                          full_time: true,
                                          hours_worked: 32)

barista_3 = coffeeshop_2.baristas.create(name: 'Marco',
                                          full_time: true,
                                          hours_worked: 36)

barista_4 = coffeeshop_2.baristas.create(name: 'Rosie',
                                           full_time: false,
                                           hours_worked: 24)