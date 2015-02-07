class CreateBookLists < ActiveRecord::Migration
  def change
    create_table :book_lists do |t|
      t.integer :user_id
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :book_lists, :user_id
  end
end
