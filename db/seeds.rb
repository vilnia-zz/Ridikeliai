# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{userName: 'algis', name: 'Algirdas', }, {}])
recipes = Recipe.create([{name: 'sriubos',        description: 'skaniausios sriubos'},
			      {name: 'padažai',   description: 'gardžiausi padažai'},
                              {name: 'desertai',  description: 'dangiškieji desertai'},
			      {name: 'padažai',   description: 'kvapnieji padažai'},
                              {name: 'gėrimai',   description: 'gaivinantys gėrimai'},
			      {name: 'konservai', description: 'ilgai išliekantys maistingi konservai'}])
categories = Category.create([{name: 'sriubos',   description: 'skaniausios sriubos'},
			      {name: 'padažai',   description: 'gardžiausi padažai'},
                              {name: 'desertai',  description: 'dangiškieji desertai'},
			      {name: 'padažai',   description: 'kvapnieji padažai'},
                              {name: 'gėrimai',   description: 'gaivinantys gėrimai'},
			      {name: 'konservai', description: 'ilgai išliekantys maistingi konservai'}])
measurements = Measurement.create([{name: 'kg',       description: 'kilogramai'},
				   {name: 'g',        description: 'gramai'},
                                   {name: 'l',        description: 'litrai'},
				   {name: 'valg. š.', description: 'šaukštas'},
                                   {name: 'arb. š.',  description: 'arbatinis šaukštelis'},
				   {name: 'laš.',     description: 'lašas'},
				   {name: 'ml',       description: 'mililitrai'}])
ingredients = Ingredient.create([{name: 'miltai',        description: 'pilno grūdo miltai'},
				   {name: 'cukrus',      description: 'cukranendrių rudasis cukrus'},
                                   {name: 'lauro lapai', description: 'lauro lapai iš Graikijos'},
				   {name: 'kiaušiniai',  description: 'naminių vištų kiaušiniai'},
                                   {name: 'sviestas',    description: 'naminis saldžios grietinėlės sviestas'},
				   {name: 'pipirai',     description: 'ekologiški pipirai'},
				   {name: 'bananai',     description: 'ekologiški bananai iš Ekvadoro'}])
