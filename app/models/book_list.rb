class BookList < ActiveRecord::Base
  belongs_to :user
  has_many :user_books, through: :user
  has_many :books, through: :user_books
end

# == Schema Information
#
# Table name: book_lists
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_book_lists_on_user_id  (user_id)
#
