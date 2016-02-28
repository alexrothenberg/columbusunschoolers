# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)
if Rails.env.development?
  ENV['DEFAULT_PASSWORD'] ||= 'password'
else
  raise 'Need to set ENV var "DEFAULT_PASSWORD"' if ENV['DEFAULT_PASSWORD'].nil?
end

Family.destroy_all

the_smiths = Family.create!()
jane_smith = the_smiths.adults.create!(password: ENV['DEFAULT_PASSWORD'], first_name: 'Jane', last_name: 'Smith', email: 'jane_smith@example.com', phone: '555-1212', text_messagable: true, address: ['123 Main St', 'Anytown USA'].join("\n"))
junior_smith = the_smiths.children.create!(first_name: 'Junior', birthday: 'May 1, 2008'.to_date, always_with_parent: false)
baby_smith = the_smiths.children.create!(  first_name: 'Baby',   birthday: 1.month.ago,           always_with_parent: true)

the_joneses = Family.create!()
amy_jones = the_joneses.adults.create!(password: ENV['DEFAULT_PASSWORD'], first_name: 'Amy', last_name: 'jones', email: 'jane_jones@example.com', phone: '555-1212', text_messagable: true, address: ['123 Main St', 'Anytown USA'].join("\n"))
bob_jones = the_joneses.children.create!(first_name: 'Bob', birthday: 'May 1, 2011'.to_date, always_with_parent: false)
susan_jones = the_joneses.children.create!(  first_name: 'Susan', birthday: 5.years.ago,           always_with_parent: false)

Course.destroy_all
art = Course.create!(name: 'Art', description: 'We will be making art', minimum_age: 1, maximum_age: 16, minimum_student_count: 10, maximum_student_count:20)
art.course_adults.create!(adult: jane_smith, role: 'teacher')
art.course_children.create!(child: junior_smith)
art.course_children.create!(child: bob_jones)
art.course_children.create!(child: susan_jones)

karate = Course.create!(name: 'karate', description: 'Karate is about more than just kicking and punching', minimum_age: 5, maximum_age: 99, minimum_student_count: 3, maximum_student_count:25)
karate.course_adults.create!(adult: amy_jones, role: 'teacher')
karate.course_adults.create!(adult: jane_smith, role: 'adult with child')
karate.course_children.create!(child: junior_smith)
karate.course_children.create!(child: susan_jones)
