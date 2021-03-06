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

ActiveRecord::Schema.define(version: 20161023094941) do

  create_table "transactions", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "price"
    t.string   "virtual_credit_card"
    t.string   "ccv"
    t.string   "expiration"
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.string   "card_token"
    t.string   "total_payers"
    t.string   "already_paid"
    t.string   "status"
    t.string   "requester"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "password"
    t.string   "credit_card_num"
    t.string   "ccv"
    t.string   "expiration"
    t.string   "username"
    t.string   "funding_source_token"
    t.string   "funding_source_address"
    t.integer  "transaction_id"
    t.index ["transaction_id"], name: "index_users_on_transaction_id"
  end

end
