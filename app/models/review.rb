class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
end

# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  book_id    :integer
#  title      :string(255)
#  comment    :text
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_reviews_on_book_id  (book_id)
#  index_reviews_on_user_id  (user_id)
#
