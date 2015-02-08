class Kids::BooksController < KidsBaseController
  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book = Book.find(params[:id])
  end
end
