# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(:name => "Admin User", :email => "admin@gmail.com", :password => '123456', :password_confirmation => '123456', :confirmed_at => DateTime.now, role: 0)
(1..10).each do |i|
  user = User.create!(:name => "John Doe_#{i}", :email => "john#{i}@gmail.com", :password => '123456', :password_confirmation => '123456', :confirmed_at => DateTime.now, role: 1)
end