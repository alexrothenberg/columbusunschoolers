# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Family.destroy_all

the_smiths = Family.create()
jane_smith = the_smiths.adults.create(first_name: 'Jane', last_name: 'Smith', email: 'jane_smith@example.com', phone: '555-1212', text_messagable: true, address: ['123 Main St', 'Anytown USA'].join("\n"))
junior_smith = the_smiths.children.create(first_name: 'Junior', birthday: 'May 1, 2008'.to_date, always_with_parent: false)
baby_smith = the_smiths.children.create(  first_name: 'Baby',   birthday: 1.month.ago,           always_with_parent: true)
