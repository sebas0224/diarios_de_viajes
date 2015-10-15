# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	country=Country.create(continent: "America", name:"Colombia")
	city=Citytown.create(state: "bogota", name: "bogota", country: country)
	place=Place.create(tipo: "restaurante", name: "andres", citytown: city)
	
	#user=User.create(name: "user", mail: "test@gmail.com", salt: "111111", password: "123456789")
	#story=Story.create(tittle: "mi primer viaje", content: "jksfhbsaekjdgbdsjbf", user: user, place: place, date: "111111")
	#Comment.create(content: "jkfxghjgdfhgdj", story: story)

	
5.times do |i|
	
	user=User.create(name: "user#{i}", mail: "test#{i}@gmail.com", salt: "111111", password: "123456789")
	story=Story.create(tittle: "mi primer viaje", content: "jksfhbsaekjdgbdsjbf", user: user, place: place, date: "111111")
	Comment.create(content: "jkfxghjgdfhgdj", story: story)
	
end