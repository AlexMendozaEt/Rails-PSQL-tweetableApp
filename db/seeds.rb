puts "Start Seeding"

User.destroy_all
Tweet.destroy_all
Like.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('tweets')
ActiveRecord::Base.connection.reset_pk_sequence!('likes')

puts "Creating Users"
user1 = User.create(username: "user1", name: "user1", email: "user1@mail.com", password: "qwerty")
user2 = User.create(username: "user2", name: "user2", email: "user2@mail.com", password: "qwerty")
user3 = User.create(username: "user3", name: "user3", email: "user3@mail.com", password: "qwerty")
user4 = User.create(username: "user4", name: "user4", email: "user4@mail.com", password: "qwerty")
user5 = User.create(username: "user5", name: "user5", email: "user5@mail.com", password: "qwerty")
admin = User.create(username: "admin", name: "admin", email: "admin@mail.com", password: "qwerty", role: 1)
puts "Creating Users Avatars"
user1.avatar.attach(io: File.open("app/assets/images/icons_avatars/user1_icon.png"), filename:"user1_icon.png")
user2.avatar.attach(io: File.open("app/assets/images/icons_avatars/user2_icon.png"), filename:"user2_icon.png")
user3.avatar.attach(io: File.open("app/assets/images/icons_avatars/user3_icon.png"), filename:"user3_icon.png")
user4.avatar.attach(io: File.open("app/assets/images/icons_avatars/user4_icon.png"), filename:"user4_icon.png")
admin.avatar.attach(io: File.open("app/assets/images/icons_avatars/admin_icon.png"), filename:"admin_icon.png")
puts "Creating Users Tweets"
tweet1 = Tweet.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus mi nisl, nec consectetur nulla tristique in. Sed at neque et justo vel.", user_id: 1)
tweet2 = Tweet.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus mi nisl, nec consectetur nulla tristique in. Sed at neque et justo vel.", user_id: 2)
tweet3 = Tweet.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus mi nisl, nec consectetur nulla tristique in. Sed at neque et justo vel.", user_id: 3)
tweet4 = Tweet.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus mi nisl, nec consectetur nulla tristique in. Sed at neque et justo vel.", user_id: 4)
tweet5 = Tweet.create(body: "replied 1", user_id: 2, replied_to_id: 1)
tweet6 = Tweet.create(body: "replied 2", user_id: 1, replied_to_id: 2)
puts "End Seeding"
