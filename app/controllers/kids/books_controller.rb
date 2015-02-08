class Kids::BooksController < KidsBaseController
  def index
    @books = Book.all
    render json: @books
  end
end
