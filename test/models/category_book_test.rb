require 'test_helper'

class CategoryBookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: category_books
#
#  id          :integer          not null, primary key
#  category_id :integer
#  book_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_category_books_on_book_id      (book_id)
#  index_category_books_on_category_id  (category_id)
#
