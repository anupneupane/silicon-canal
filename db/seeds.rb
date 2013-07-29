# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
unless User.exists?(email: "admin@siliconcanal.co.uk")
  User.create! name: "Admin", email: "admin@siliconcanal.co.uk", admin: true, password: "password"
end

Company.create name: "Oxygen Accelerator"
Company.create name: "New Media Education Ltd"
Company.create name: "Urban Coffee"
Company.create name: "Beatfreeks"
Company.create name: "Yogi"
Company.create name: "Click"
Company.create name: "Iwazat"

Person.create name: "Jeremy Waker", email: "jez.walker@gmail.com"
Person.create name: "Taiyab Raja", email: "taiyab.raja@gmail.com"
Person.create name: "Simon Jenner", email: "simon@oxygenaccelerator.com"
Person.create name: "Kath Preston", email: "kath@oxygenaccelerator.com"
Person.create name: "Stuart Bates" , email: "stuart@builtbyclick.com"
