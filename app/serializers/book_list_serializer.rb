class BookListSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :books

  def books
    book_array = []
    available_books = object.books.available(object.user_id)
    available_books.each do |book|
      book_array << BookSerializer.new(book)
    end

    book_array
  end

end
