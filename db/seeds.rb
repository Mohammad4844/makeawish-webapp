# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Comment.delete_all
Post.delete_all

posts = [
  { title: "Post 1", content: "This just some dummy text" },
  { title: "Post 2 also", content: "Aso some more text" },
]

posts.each do |p|
  Post.create(p)
end

post_id = Post.first.id

comments = [
  { post_id: post_id, content: "First comment" },
  { post_id: post_id, content: "Seconf comment" },
]

comments.each do |c|
  Comment.create(c)
end