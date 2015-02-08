class Kids::CategoriesController < KidsBaseController
  def index
    @categories = Category.all
  end

  def create
    book_list_ids = params[:book][:book_list_ids]
    book_list_ids.each do |book_list_id|
      UserCategory.create({user_id: current_user.id, book_list_id: book_list_id})
    end
    redirect_to kids_levels_path
  end
end
