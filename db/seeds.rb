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

User.new(:email=>'usuario@usuario.com', :password=>'usuario', :password_confirmation =>'usuario', :first_name=>'usuario', :second_name=>'normal', :adress=>'calle de usuario', :phone=> 555666777).save


Product.new(:image_url=>'aceituna.jpg', :title=>'Sandwich de aceitunas', :description =>'<p>Sandwich con deliciosas aceitunas molidas, con pimiento, mayonesa, atun y guisantes.</p>', :price=> 1.50, :available=> true, :type_id=> 1).save

Product.new(:image_url=>'aguacate.jpg', :title=>'Sandwich de aguacate', :description =>'<p>Sandwich hecho con crema de aguacate.</p>', :price=>1.50, :available=> true, :type_id=>1).save

Product.new(:image_url=>'atun_y_millo.jpg', :title=>'Sandwich de atun y millo', :description =>'<p>Sandwich tipico de canarias, atun, millo y mayonesa.</p>', :price=>1.50, :available=> true, :type_id=>1).save

Product.new(:image_url=>'batata_y_pasas.jpg', :title=>'Truchas de batata y pasas', :description =>'<p>Truchas caseras hechas de batata molida y pasas.</p>', :price=>2.50, :available=> true, :type_id=>5).save

Product.new(:image_url=>'galletas_caseras.jpg', :title=>'Galletas caseras', :description =>'<p>Deliciosas Galletas caseras, horneadas y glaseadas a mano.</p>', :price=>2, :available=> true, :type_id=>5).save

Product.new(:image_url=>'pack.jpg', :title=>'Bandeja variada', :description =>'<p>Bandeja con una seleccion de nustros mejores productos</p>', :price=>10.50, :available=> true, :type_id=>1).save

Product.new(:image_url=>'pimientos_con_atun.jpg', :title=>'Sandwich de pimientos y atun', :description =>'<p>Sandwich de pimientos, atun y huevo.</p>', :price=>1.5, :available=> true, :type_id=>1).save

Product.new(:image_url=>'rollito_de_gambas.jpg', :title=>'Rollito de gambas al ajillo', :description =>'<p>Delicioso pan de sandwich enrrollado con gambas al ajillo molidas y mayonesa.</p>', :price=>2, :available=> true, :type_id=>4).save

Product.new(:image_url=>'rollitos_de_pollo.jpg', :title=>'Rollito de pollo al ajillo', :description =>'<p>Delicioso poyo asado molido al ajillo con mayonesa.</p>', :price=>2, :available=> true, :type_id=>4).save

Product.new(:image_url=>'atun_vegetal.jpg', :title=>'Sandwich de atun vegetal', :description =>'<p>delicioso sandwich de atun, huevo, tomate, lechuga y mayonesa.</p>', :price=>1.50, :available=> true, :type_id=>1).save

Product.new(:image_url=>'vegetal.jpg', :title=>'Sandwich vegetal', :description =>'<p>Sandwich vegetal con huevo y mayonesa.</p>', :price=>1.50, :available=> true, :type_id=>1).save

Product.new(:image_url=>'nodisponible.jpg', :title=>'Bocadillo especial', :description =>'<p>Bocadillo especial de la casa con verduras de calidad.</p>', :price=>2, :available=> true, :type_id=>2).save
