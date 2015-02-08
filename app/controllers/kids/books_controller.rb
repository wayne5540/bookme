class Kids::BooksController < KidsBaseController

  before_action :find_book, only: [:show, :add_review, :add_to_book_list]

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

  def add_to_book_list
    book_params[:book_list_ids]
    @book.update_attributes(book_params)

    book_list_ids = book_params[:book_list_ids].select(&:present?)
    book_lists = BookList.where(:id => book_list_ids)
    book_lists.each do |book_list|
      user_book = UserBook.where(:user_id => book_list.user_id).first
      if user_book.blank?
        ub = @book.user_books.build
        ub.user_id = book_list.user_id
        ub.save
      end
    end

    # Check to add point here.

    redirect_to kids_book_path(@book)
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit!
  end

  def review_params
    params.require(:review).permit!
  end
end
