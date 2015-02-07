class Category < ActiveRecord::Base
  has_many :category_books
  has_many :books, through: :category_books
end

# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#
