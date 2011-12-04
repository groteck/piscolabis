# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
group=Ugroupe.create!( :name=>"admin")
group=Ugroupe.create!( :name=>"cocinero")
group=Ugroupe.create!( :name=>"usuario")

user=User.new(:email=>'admin@admin.com', :password=>'piscos', :password_confirmation =>'piscos', :first_name=>'admin', :second_name=>'el puto', :adress=>'mi calle', :phone=> 666666666).save
