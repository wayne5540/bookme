class Kids::BooksController < KidsBaseController
  def index
    @books = Book.where(id: current_user.id)
    render json: @books
  end
end
