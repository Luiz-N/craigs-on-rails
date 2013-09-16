require 'faker'

puts Faker

categories = []

10.times do
  categories << Category.create(title: Faker::Commerce.department, description: Faker::Lorem.paragraph(3))
end

User.create(:username => "nprater",:email => "prater.nick@gmail.com",:password => "password",:password_confirmation => "password")
User.create(:username => "lneves",:email => "lneves@gmail.com",:password => "password",:password_confirmation => "password")
User.create(:username => "Wendtastic",:email => "Wendtastic@gmail.com",:password => "password",:password_confirmation => "password")

categories.each { |category| 
  10.times do
    category.posts << Post.create(title: Faker::Commerce.product_name,
                                  description: Faker::Lorem.paragraph(3),
                                  price: rand(10..100),
                                  email: Faker::Internet.free_email,
                                  user_id: rand(1..3))
  end
}

