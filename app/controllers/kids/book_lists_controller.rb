class Kids::BookListsController < KidsBaseController

  before_action :find_book_list, only: [:edit, :update, :destroy]

  def index
    @book_lists = current_user.book_lists.recent
    # books = current_user.books
    # user_preferences = current_user.preferences
    # @available_books = []
    # books.each do |book|
    #   same_category = book.categories & user_preferences
    #   if same_category.present?
    #     @available_books << book
    #   end
    # end

    @available_books = []
    book_list_books_ids = current_user.book_list_books.pluck(:id)
    books = Book.all
    books.each do |book|
      if book_list_books_ids.include?(book.id)
        @available_books << book
      end
    end

    # render json: @book_lists, each_serializer: BookListSerializer
  end

  def new
    @book_list = current_user.book_lists.build
    render json: @book_list, serializer: BookListSerializer
  end

  def create
    @book_list = current_user.book_lists.build(book_list_params)
    if @book_list.save
      flash[:success] = "Saved."
      redirect_to kids_root_path
    else
      flash[:error] = "Failed."
      render :new
    end
  end

  def edit
  end

  def update
    if @book_list.update_attributes(book_list_params)
      flash[:success] = "Saved."
      redirect_to kids_root_path
    else
      flash[:error] = "Failed."
      render :edit
    end
  end

  def destroy
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

  def find_book_list
    @book_list = current_user.book_lists.find(params[:id])
  end

  def book_list_params
    params.require(:book_list).permit!
  end
end
