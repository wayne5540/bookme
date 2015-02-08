class UserBook < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
end

# == Schema Information
#
# Table name: user_books
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  book_id      :integer
#  completed    :boolean          default(FALSE)
#  created_at   :datetime
#  updated_at   :datetime
#  book_list_id :integer
#
# Indexes
#
#  index_user_books_on_book_id       (book_id)
#  index_user_books_on_book_list_id  (book_list_id)
#  index_user_books_on_user_id       (user_id)
#
