# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Post.create(title: "Hello world!", abstract: "Abstract 1", body: "Lorem ipsum dolor sit amet consectuetur adiscipit 1")
p2 = Post.create(title: "All you think you knew", abstract: "Abstract 2", body: "Lorem ipsum dolor sit amet consectuetur adiscipit 2")
p3 = Post.create(title: "Slowly understanding how it works", abstract: "Abstract 3", body: "Lorem ipsum dolor sit amet consectuetur adiscipit 3")

e1 = HistoryEvent.create(post_id: "1", event_type_id: "1", created_at: "01/01/2018 11:00:00")
e2 = HistoryEvent.create(post_id: "2", event_type_id: "1", created_at: "02/02/2018 12:00:00")
e3 = HistoryEvent.create(post_id: "3", event_type_id: "1", created_at: "03/03/2018 13:00:00")
e4 = HistoryEvent.create(post_id: "3", event_type_id: "2", created_at: "04/03/2018 14:00:00")
e5 = HistoryEvent.create(post_id: "3", event_type_id: "2", created_at: "05/03/2018 15:00:00")
e6 = HistoryEvent.create(post_id: "3", event_type_id: "4", created_at: "06/03/2018 16:00:00")

t1 = EventType.create(typology: "create")
t2 = EventType.create(typology: "edit")
t3 = EventType.create(typology: "delete")
t4 = EventType.create(typology: "comment")
t5 = EventType.create(typology: "send")
t6 = EventType.create(typology: "trash")
