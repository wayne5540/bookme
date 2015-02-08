# Create a user first then run `rake db:fake`

user = User.last

Category.create([
  {
    name: "Funny",
    description: "Funny things"
  },
  {
    name: "Sports",
    description: "Sports things"
  }
])

BookList.create([
  {
    title: "Wish to read",
    description: "Wish to read.",
    user_id: user.id
  },
  {
    title: "Reading",
    description: "Books I'm reading now.",
    user_id: user.id
  }
])

book_list_1 = BookList.first
book_list_2 = BookList.last

Book.create([
  {
    title: "Book1",
    description: "Book1",
    isbn: "qwehfhqweofihw2e",
    author: "Wayne"
  },
  {
    title: "Book2",
    description: "Book2",
    isbn: "qwehfhegefihw2e",
    author: "Harry Potter"
  }
])

UserBook.create([
  {
    user_id: user.id,
    book_id: Book.first.id
  },
  {
    user_id: user.id,
    book_id: Book.last.id
  }
])
