# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150208035338) do

  create_table "book_book_lists", force: true do |t|
    t.integer  "book_list_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_book_lists", ["book_id"], name: "index_book_book_lists_on_book_id"
  add_index "book_book_lists", ["book_list_id"], name: "index_book_book_lists_on_book_list_id"

  create_table "book_lists", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_lists", ["user_id"], name: "index_book_lists_on_user_id"

  create_table "books", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "isbn"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_url"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_books", force: true do |t|
    t.integer  "category_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "category_books", ["book_id"], name: "index_category_books_on_book_id"
  add_index "category_books", ["category_id"], name: "index_category_books_on_category_id"

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.string   "title"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["book_id"], name: "index_reviews_on_book_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "user_books", force: true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.boolean  "completed",  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_books", ["book_id"], name: "index_user_books_on_book_id"
  add_index "user_books", ["user_id"], name: "index_user_books_on_user_id"

  create_table "user_categories", force: true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_categories", ["category_id"], name: "index_user_categories_on_category_id"
  add_index "user_categories", ["user_id"], name: "index_user_categories_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "point",                  default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
