# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
User.create(email: 'a@a.com', name: "Romalopes A", password: 'password', password_confirmation: 'password', role: User.roles[:admin])
User.create(email: 'b@b.com', name: "Romalopes B", password: 'password', password_confirmation: 'password', role: User.roles[:user])

10.times do |x|
  post = Post.create(title: "Title #{x}", body: "Body #{x} text body", user_id: User.first.id)
  5.times do |y|
    Comment.create(body: "Coment #{x}-#{y} ", user_id: User.second.id, post_id: post.id)
  end
end

5.times do |x|
  post = Post.create(title: "Titulo #{x}", body: "Corpo #{x} texto", user_id: User.second.id)
  3.times do |y|
    Comment.create(body: "Coment #{x}-#{y} ", user_id: User.first.id, post_id: post.id)
  end
end
