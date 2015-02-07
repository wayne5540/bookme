class CreateBookBookLists < ActiveRecord::Migration
  def change
    create_table :book_book_lists do |t|
      t.integer :book_list_id
      t.integer :book_id

      t.timestamps
    end
    add_index :book_book_lists, :book_list_id
    add_index :book_book_lists, :book_id
  end
end
