# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Ugroupe.create!( :name=>"admin")
Ugroupe.create!( :name=>"cocinero")
Ugroupe.create!( :name=>"usuario")

Type.create!( :name=>'Sandwich')
Type.create!( :name=>'Bocadillo')
Type.create!( :name=>'Croisant')
Type.create!( :name=>'Rollito')
Type.create!( :name=>'Dulce')

User.new(:email=>'admin@admin.com', :password=>'piscos', :password_confirmation =>'piscos', :first_name=>'admin', :second_name=>'el puto', :adress=>'mi calle', :phone=> 666666666).save

user=User.first
user.password='piscos'
user.password_confirmation = 'piscos'
user.ugroupe_id= 1
user.save

User.new(:email=>'cocinero@cocinero.com', :password=>'cocinero', :password_confirmation =>'cocinero', :first_name=>'cocinero', :second_name=>'el puto', :adress=>'mi calle', :phone=> 666666666).save

user=User.last
user.password='cocinero'
user.password_confirmation = 'cocinero'
user.ugroupe_id= 2
user.save

