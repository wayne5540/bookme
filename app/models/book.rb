class Book < ActiveRecord::Base
end

# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  isbn        :string(255)
#  author      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#
