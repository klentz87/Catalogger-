# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = Genre.create([{name: "Art"}, {name: "Nostalgia"}, {name: "Metaphysics"}, 
  {name: "Home Repair"}, {name: "Arts/Crafts"}, {name: "Gardening"},
  {name: "Cooking"}, {name: "Health"}, {name: "Religion"}, {name: "Philosophy"},
  {name: "Kids"}, {name: "Young Adult"}, {name: "Sociology"}, {name: "Political Science"},
  {name: "World History"}, {name: "U.S. History"}, {name: "Sports"}, {name: "Transportation"},
  {name: "Science"}, {name: "Computer Science"}, {name: "Business"}, {name: "Performing Arts"},
  {name: "Graphic Novels"}, {name: "Manga"}, {name: "Humor"}, {name: "Travel"}, {name: "Regional"},
  {name: "Self-Help/Psychology"}, {name: "Psychology"}, {name: "Parenting"}, {name: "Mystery"}, {name: "Romance"},
  {name: "Sci-Fi"}, {name: "Foreign Language"}, {name: "Classic Literature"}])
