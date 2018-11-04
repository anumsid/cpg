# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

formats = Format.create([
  { name: "Hardcover" },
  { name: "Softcover" },
  { name: "Digital" }
])

authors = Author.create([
  {
    first_name: "Anum",
    last_name: "Siddiqui"
  },
  {
    first_name: "James",
    last_name: "Livolsi"
  },
  {
    first_name: "John",
    last_name: "Smith"
  },
  {
    first_name: "Luke",
    last_name: "Skywalker"
  },
  {
    first_name: "Matilda",
    last_name: "Cape"
  }
])
