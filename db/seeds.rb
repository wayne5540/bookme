desc "Task description"
task :build_stuff => [:dependent, :tasks] do
  animals = Category.find(3)

  sports = Category.find(2)

  animal_book1 = animals.books.create(
    {
      title: "Into the Wild (Warriors, Book 1)",
      description: "Join the legion of fans who have made Erin Hunter's Warriors series a #1 national bestseller! ",
      isbn: "123456aaa",
      img_url: "http://ecx.images-amazon.com/images/I/71c9QJtq-1L.jpg",
      author: "Erin Hunter"
    }
  )

  animal_book2 = animals.books.create(
    {
      title: "Shiloh",
      description: "When Marty Preston comes across a young beagle in the hills behind his home, it's love at first sight—and also big trouble.",
      isbn: "qwehfhqweoewfewf",
      img_url: "http://ecx.images-amazon.com/images/I/81-eDs2f4CL.jpg",
      author: "Phyllis Reynolds Naylor "
    }
  )

  animals.books.create(
    {
      title: "Because of Winn-Dixie",
      description: "Kate DiCamillo’s first published novel, like Winn-Dixie himself...",
      isbn: "123456aaa",
      img_url: "http://ecx.images-amazon.com/images/I/71z72LdB0XL.jpg",
      author: "Kate DiCamillo"
    }
  )


  animals.books.create(
    {
      title: "Rain Reign",
      description: "Rose Howard is obsessed with homonyms. She’s thrilled that her own name is a homonym...",
      isbn: "123fff",
      img_url: "http://ecx.images-amazon.com/images/I/91sf19ojfLL.jpg",
      author: "Ann M. Martin"
    }
  )


  # Sports

  sport_book1 = sports.books.create(
    {
      title: "The Crossover",
      description: "Josh and Jordan must come to grips with growing up on and off the court to realize...",
      isbn: "fbvrewwdf",
      img_url: "http://ecx.images-amazon.com/images/I/81xdS9VnqZL.jpg",
      author: "Kwame Alexander"
    }
  )

  sport_book2 = sports.books.create(
    {
      title: "Tangerine",
      description: "The chaos is compounded by constant harassment from his football–star brother....",
      isbn: "eewf",
      img_url: "http://ecx.images-amazon.com/images/I/71A0-NEPLfL.jpg",
      author: "Edward Bloor"
    }
  )

  sports.books.create(
    {
      title: "Keeper",
      description: "When Paul Faustino of LA NACION flips on his tape recorder for an exclusive interview with El Gato — the phenomenal goalkeeper....",
      isbn: "ebefbfe",
      img_url: "http://ecx.images-amazon.com/images/I/417E1NCA5RL.jpg",
      author: "Mal Peet"
    }
  )

  sports.books.create(
    {
      title: "Perfect Season (Football Genius)",
      description: "Perfect for fans of...",
      isbn: "fnseng",
      img_url: "http://ecx.images-amazon.com/images/I/51Mi3ozKagL.jpg",
      author: "Tim Green"
    }
  )


  user = User.first


  book_list1 = user.book_lists.create(
    {
      title: "Want to learn",
      description: "Want to learn"
    }
  )

  book_list2 = user.book_lists.create(
    {
      title: "Pets~",
      description: "pets"
    }
  )

  book_list1.books << sport_book1
  book_list1.books << sport_book2


  book_list2.books << animal_book1
  book_list2.books << animal_book2

end
