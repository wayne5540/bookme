require 'test_helper'

class UserCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: user_categories
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_user_categories_on_category_id  (category_id)
#  index_user_categories_on_user_id      (user_id)
#
