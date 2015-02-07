require 'test_helper'

class BookBookListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: book_book_lists
#
#  id           :integer          not null, primary key
#  book_list_id :integer
#  book_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_book_book_lists_on_book_id       (book_id)
#  index_book_book_lists_on_book_list_id  (book_list_id)
#
