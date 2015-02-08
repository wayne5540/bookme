class Kids::BooksController < KidsBaseController
  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book = Book.find(params[:id])
    @reviews = @book.reviews
    @review = @book.reviews.build
  end

  def add_review
    @book = Book.find(params[:id])
    @review = @book.reviews.build(review_params)
    @review.user_id = current_user.id
    @review.save

    review_count = @book.reviews.count
    if review_count - 1 >= 0
      point_earned = 10
      current_user.add_point!(point_earned)
    else
      point_earned = 5
      current_user.add_point!(point_earned)
    end

    flash[:success] = "Congratulation! You've got #{point_earned} point!"

    redirect_to kids_book_path(@book)
  end

  private

  def review_params
    params.require(:review).permit!
  end
end
