# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

animals = Category.find(3)

sports = Category.find(2)

animals.book.create({
  {
    title: "Into the Wild (Warriors, Book 1)",
    description: "One of the famouse book.",
    isbn: "qwehfhqweofihw2e",
    img_url: "http://img1.wikia.nocookie.net/__cb20070927074347/harrypotter/images/1/15/Hp7.jpg",
    author: "Wayne"
  }
})

book_1 = Book.create(
  {
    title: "Harry Potter",
    description: "One of the famouse book.",
    isbn: "qwehfhqweofihw2e",
    img_url: "http://img1.wikia.nocookie.net/__cb20070927074347/harrypotter/images/1/15/Hp7.jpg",
    author: "Wayne"
  }
)
