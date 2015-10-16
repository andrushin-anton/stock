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

ActiveRecord::Schema.define(version: 20151015080213) do

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

  create_table "D_AAL", force: :cascade do |t|
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

  create_table "D_ABC", force: :cascade do |t|
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

  create_table "D_ADM", force: :cascade do |t|
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

  create_table "D_AET", force: :cascade do |t|
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

  create_table "D_AIG", force: :cascade do |t|
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

  create_table "D_ALL", force: :cascade do |t|
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

  create_table "D_ANTM", force: :cascade do |t|
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

  create_table "D_BBY", force: :cascade do |t|
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

  create_table "D_BRK-A", force: :cascade do |t|
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

  create_table "D_C", force: :cascade do |t|
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

  create_table "D_CAH", force: :cascade do |t|
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

  create_table "D_CAT", force: :cascade do |t|
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

  create_table "D_CI", force: :cascade do |t|
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

  create_table "D_CMCSA", force: :cascade do |t|
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

  create_table "D_COP", force: :cascade do |t|
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

  create_table "D_COST", force: :cascade do |t|
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

  create_table "D_CSCO", force: :cascade do |t|
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

  create_table "D_CVS", force: :cascade do |t|
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

  create_table "D_CVX", force: :cascade do |t|
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

  create_table "D_DAL", force: :cascade do |t|
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

  create_table "D_DE", force: :cascade do |t|
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

  create_table "D_DFT", force: :cascade do |t|
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

  create_table "D_DOW", force: :cascade do |t|
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

  create_table "D_EPD", force: :cascade do |t|
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

  create_table "D_ESRX", force: :cascade do |t|
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

  create_table "D_ETE", force: :cascade do |t|
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

  create_table "D_FNMA", force: :cascade do |t|
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

  create_table "D_GS", force: :cascade do |t|
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

  create_table "D_HCA", force: :cascade do |t|
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

  create_table "D_HD", force: :cascade do |t|
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

  create_table "D_HUM", force: :cascade do |t|
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

  create_table "D_IBM", force: :cascade do |t|
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

  create_table "D_IM", force: :cascade do |t|
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

  create_table "D_INT", force: :cascade do |t|
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

  create_table "D_INTC", force: :cascade do |t|
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

  create_table "D_INTL", force: :cascade do |t|
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

  create_table "D_JCI", force: :cascade do |t|
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

  create_table "D_JPM", force: :cascade do |t|
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

  create_table "D_KR", force: :cascade do |t|
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

  create_table "D_LMT", force: :cascade do |t|
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

  create_table "D_LOW", force: :cascade do |t|
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

  create_table "D_MCK", force: :cascade do |t|
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

  create_table "D_MDLZ", force: :cascade do |t|
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

  create_table "D_MET", force: :cascade do |t|
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

  create_table "D_MPC", force: :cascade do |t|
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

  create_table "D_MRK", force: :cascade do |t|
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

  create_table "D_MS", force: :cascade do |t|
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

  create_table "D_NKE", force: :cascade do |t|
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

  create_table "D_ORCL", force: :cascade do |t|
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

  create_table "D_PAGP", force: :cascade do |t|
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

  create_table "D_PEP", force: :cascade do |t|
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

  create_table "D_PFE", force: :cascade do |t|
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

  create_table "D_PRU", force: :cascade do |t|
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

  create_table "D_PSX", force: :cascade do |t|
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

  create_table "D_SYY", force: :cascade do |t|
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

  create_table "D_TGT", force: :cascade do |t|
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

  create_table "D_TRV", force: :cascade do |t|
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

  create_table "D_TSN", force: :cascade do |t|
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

  create_table "D_TSO", force: :cascade do |t|
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

  create_table "D_UAL", force: :cascade do |t|
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

  create_table "D_UNH", force: :cascade do |t|
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

  create_table "D_UPS", force: :cascade do |t|
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

  create_table "D_UTX", force: :cascade do |t|
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

  create_table "D_V", force: :cascade do |t|
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

  create_table "D_VLO", force: :cascade do |t|
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

  create_table "D_VZ", force: :cascade do |t|
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

  create_table "D_WBA", force: :cascade do |t|
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

  create_table "D_WMT", force: :cascade do |t|
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
    t.string   "symbol",      limit: 255
    t.string   "name",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "market",      limit: 255
    t.text     "description", limit: 65535
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
