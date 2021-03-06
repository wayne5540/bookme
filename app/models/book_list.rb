class BookList < ActiveRecord::Base
  belongs_to :user
  has_many :book_book_lists
  has_many :books, through: :book_book_lists

  scope :recent, -> { order("id DESC") }
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
