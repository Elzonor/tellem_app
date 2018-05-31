# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Post.create(post_title: "Titolo 1", post_abstract: "Abstract 1", post_body: "Lorem ipsum dolor sit amet consectuetur adiscipit 1")
p2 = Post.create(post_title: "Titolo 2", post_abstract: "Abstract 2", post_body: "Lorem ipsum dolor sit amet consectuetur adiscipit 2")
p3 = Post.create(post_title: "Titolo 3", post_abstract: "Abstract 3", post_body: "Lorem ipsum dolor sit amet consectuetur adiscipit 3")