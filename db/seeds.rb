puts "Start Seeding"

User.destroy_all
Tweet.destroy_all
Like.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('tweet')
ActiveRecord::Base.connection.reset_pk_sequence!('like')

puts "Creating Game"
user1 = User.create(name: "The Last of Us", rating: 94.0, release_date: "2013-01-01", summary: "A third person shooter/stealth/survival hybrid, in which twenty years after the outbreak of a par...", category: 1)
user2 = User.create(name: "Borderlands", rating: 90.0, release_date: "2012-01-01", summary: "Red hair crookshanks bludger Marauder’s Map Prongs sunshine daisies butter mellow Ludo Bagman. Beaters gobbledegook N.E.W.T...", category: 2)
user3 = User.create(name: "Tomb Raider", rating: 93.0, release_date: "2011-01-01", summary: "Honeydukes eriseD inferi Wormtail. Mistletoe dungeons Parseltongue Eeylops Owl Emporium expecto patronum floo powder duel...", category: 3)
p game1.errors.full_messages
puts "Creating Game covers"
game1.cover.attach(io: File.open("app/assets/images/TheLastOfus.png"), filename:"TheLastDeusPortada.png")
game2.cover.attach(io: File.open("app/assets/images/Borderlands3.png"), filename:"Borderlands3.png")
game3.cover.attach(io: File.open("app/assets/images/Tomb_Raider.png"), filename:"Tomb_Raider.png")
