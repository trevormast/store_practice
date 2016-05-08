# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all

Product.create!([
  {
    title: "Magma T-Shirt",
    description: "Black with Bronze logo",
    image_url: "magma-t.jpg",
    price: 20.00},
  {
    title: "Magma MDK LP",
    description: "Magma's best record",
    image_url: "MDK.jpg",
    price: 30.00},
  {
    title: "Magma Pin",
    description: "Pin with Magma logo",
    image_url: "magma_pin.jpg",
    price: 5.00}

  ])

puts "Created #{Product.count} Products!"
