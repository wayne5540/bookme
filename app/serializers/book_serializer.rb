class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :isbn, :author
end
