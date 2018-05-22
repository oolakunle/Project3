# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create!(name:  "Mr. Groot",
            email: "abc@abc.com",
            password: "abcdef",
            password_confirmation: "abcdef",
            admin: true,
            activated: true,
            activated_at: Time.zone.now)

u2 = User.create :name => 'Theo', :email => 'def@abc.com', :password => 'abcdef', :password_confirmation => "abcdef", :admin => false, :activated => true, :activated_at => Time.zone.now

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password: password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end

Category.destroy_all
c1 = Category.create :name => 'Electronics'
c2 = Category.create :name => "Men's Fashion"
c3 = Category.create :name => 'Home Appliance'

Product.destroy_all
p1 = Product.create :title => 'Headphone', :description => 'It is Yuuuuuuuuge!!!', :image => 'http://res.cloudinary.com/dwdjvyr2b/image/upload/v1526954186/zsxrfx0o8bvfkel1joad.jpg', :suburb => 'Glebe'
p2 = Product.create :title => 'Rayban sunglasses', :description => 'It is in fair condition, you will never find something as amazing as this', :image => 'http://res.cloudinary.com/dwdjvyr2b/image/upload/v1526959322/smlsrdewvals2h2q0lqi.jpg', :suburb => 'Stanmore'

u1.products << p1
u2.products << p2

c1.products << p1
c2.products << p2
