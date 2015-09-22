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

ActiveRecord::Schema.define(version: 20150906175213) do

  create_table "D_AA", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_AAPL", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_AFL", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_AMIC", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_AMZN", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_ASR", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_AXP", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_BA", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_BAC", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_BAX", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_BP", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_DDD", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_DIS", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_F", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_FB", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_FDX", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_GE", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_GOOG", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_HAL", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_HPQ", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_JNJ", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_KO", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_MCD", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_MMM", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_MSFT", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_PG", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_SBUX", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_SPAN", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_T", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_TWTR", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_WFC", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_X", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_XOM", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_XXII", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "D_YHOO", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "symbol",     limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "market",     limit: 255
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.string   "slug",       limit: 255
  end

  create_table "patterns", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "prices", force: :cascade do |t|
    t.datetime "date"
    t.float    "open",       limit: 24
    t.float    "hight",      limit: 24
    t.float    "low",        limit: 24
    t.float    "close",      limit: 24
    t.integer  "volume",     limit: 4
    t.float    "adj_close",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "setups", force: :cascade do |t|
    t.string   "symbol",     limit: 255
    t.datetime "datetime"
    t.string   "pattern",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "direction",  limit: 255
    t.string   "name",       limit: 255
    t.float    "price",      limit: 24
    t.string   "slug",       limit: 255
    t.text     "levels",     limit: 65535
  end

end
