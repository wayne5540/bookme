# Create a user first then run `rake db:fake`

user = User.last

category_1 = Category.create(
  {
    name: "Funny",
    description: "Funny things"
  }
)

category_2 = Category.create(
  {
    name: "Sports",
    description: "Sports things"
  }
)

book_list_1 = BookList.create([
  {
    title: "Wish to read",
    description: "Wish to read.",
    user_id: user.id
  }
])

book_list_2 = BookList.create({
  {
    title: "Reading",
    description: "Books I'm reading now.",
    user_id: user.id
  }
})

book_1 = Book.create([
  {
    title: "Book1",
    description: "Book1",
    isbn: "qwehfhqweofihw2e",
    author: "Wayne"
  }
)

book_2 = Book.create(
  {
    title: "Book2",
    description: "Book2",
    isbn: "qwehfhegefihw2e",
    author: "Harry Potter"
  }
)

UserBook.create([
  {
    user_id: user.id,
    book_id: book_1.id
  },
  {
    user_id: user.id,
    book_id: book_2.id
  }
])

UserCategory.create([
  {
    user_id: user.id,
    category_id: category_1.id
  },
  {
    user_id: user.id,
    category_id: category_2.id
  }
])
