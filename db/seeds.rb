# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.email = "admin@gmail.com"
u.password = "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save

puts "1 admin account created."

products = ["全棉针织条纹四件套 新款", "可水洗舒柔丝羽绒枕", "日式记忆绵坐垫"]

products_description = ["裸睡享受，柔软透气有弹性", "柔软舒适深睡眠", "活性炭记忆绵，缓解压力"]

products_prices = [299, 59, 59]

products_images = ["/images/bed.png", "/images/pillow.png", "/images/sitting.png"]

create_jobs = for i in 1..3 do
  Job.create!([title: products[i - 1], description: products_description[i - 1], quantity: rand(0..1), price: products_prices[i - 1], img: products_images[rand(0..2)]])
end
puts "3 products created."
