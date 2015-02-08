class Kids::BookListsController < KidsBaseController

  before_action :find_book_list, only: [:edit, :update, :destroy]

  def index
    @book_lists = current_user.book_lists.recent
    render json: @book_lists, each_serializer: BookListSerializer
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

  private

  def find_book_list
    @book_list = current_user.book_lists.find(params[:id])
  end

  def book_list_params
    params.require(:book_list).permit!
  end
end
