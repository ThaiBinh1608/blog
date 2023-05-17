# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: "zues@gmail.com",password: "password",password_confirmation: "password",name: "Zues",role: User.roles[:admin])

User.create(email: "test2@gmail.com",password: "password",password_confirmation: "password",name: "Tets2")

10.times do |x|
    Post.create(title: "Title #{x}", body: "Body #{x} Words go here Idk", user_id: User.first.id)
5.times do |x|
      Com.create(title: "Title #{x}", body: "Body #{x} Words go here Idk", user_id: User.first.id)   
  end
  