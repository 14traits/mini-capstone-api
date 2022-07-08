# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.destroy_all

Product.create(name: "Lifelike Elephant Inflatable", prices: 22, image_url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1571692002-inflatable-elephant-1571691977.jpg?crop=1.00xw:0.667xh;0,0.220xh&resize=768:*", description: "Try to toss a hula hoop over the trunk of the 19-inch tall inflatable elephant, because why not?")
Product.create(name: "Meat Shredder Claws", prices: 17, image_url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1571689550-51Q0xuEOjRL.jpg?crop=1xw:1.00xh;center,top&resize=768:*", description: "This surprisingly efficient way of shredding your meat has the added in bonus of making you feel like Wolverine.")
Product.create(name: "Nicolas Cage Pillow", prices: 13, image_url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1632326476-51qsxODMtYL._SL500_.jpg?crop=1xw:1.00xh;center,top&resize=768:*", description: "There are no words for this one, just put the bunny back in the box.")
Product.create(name: "Personalised Cardboard Cutout", prices: 70, image_url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1632326702-41-dsPDCWlL._SL500_.jpg?crop=1xw:1.00xh;center,top&resize=768:*", description: "You don't have to be a celebrity to get your own cardboard cut out, apparently! This seller just asks that you send them an image and height specifications, and they'll send you a larger-than-life cut-out of yourself.")
Product.create(name: "Umbrella Hat", prices: 13, image_url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1571685334-umberella-hat-1571685305.jpg?crop=1.00xw:0.667xh;0,0.193xh&resize=768:*", description: "You'll never have to hold an umbrella again with this hands-free hat to keep you dry.")
Product.create(name: "Mobile Phone Jail Cell", prices: 12, image_url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1571686938-phone-jail-1571686912.jpg?crop=1.00xw:0.667xh;0,0.135xh&resize=768:*", description: "Phone-addicts beware: you need a key to open up the lock on this cell phone holding cell.")
Product.create(name: "Chicken Harness and Leash", prices: 15, image_url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1565295718-41-Z274tCDL.jpg?crop=1xw:1xh;center,top&resize=768:*", description: "You may or may not be aware, but some cities nationwide actually do let you keep chickens as pets. This leash boasts a a durable, breathable leash that won't hurt your clucking friend.")

Supplier.create(name: FFaker::Company.name, email: FFaker::Internet.disposable_email, phone_number: FFaker::PhoneNumber.short_phone_number)
Supplier.create(name: FFaker::Company.name, email: FFaker::Internet.disposable_email, phone_number: FFaker::PhoneNumber.short_phone_number)
Supplier.create(name: FFaker::Company.name, email: FFaker::Internet.disposable_email, phone_number: FFaker::PhoneNumber.short_phone_number)
Supplier.create(name: FFaker::Company.name, email: FFaker::Internet.disposable_email, phone_number: FFaker::PhoneNumber.short_phone_number)
