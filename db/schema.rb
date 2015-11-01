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

ActiveRecord::Schema.define(version: 20151031162916) do

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

  create_table "D_ABBV", force: :cascade do |t|
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

  create_table "D_ABT", force: :cascade do |t|
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

  create_table "D_AEP", force: :cascade do |t|
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

  create_table "D_AES", force: :cascade do |t|
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

  create_table "D_AMGN", force: :cascade do |t|
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

  create_table "D_AN", force: :cascade do |t|
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

  create_table "D_APC", force: :cascade do |t|
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

  create_table "D_ARMK", force: :cascade do |t|
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

  create_table "D_ARW", force: :cascade do |t|
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

  create_table "D_AVT", force: :cascade do |t|
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

  create_table "D_BHI", force: :cascade do |t|
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

  create_table "D_BK", force: :cascade do |t|
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

  create_table "D_BMY", force: :cascade do |t|
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

  create_table "D_CAG", force: :cascade do |t|
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

  create_table "D_CHK", force: :cascade do |t|
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

  create_table "D_CL", force: :cascade do |t|
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

  create_table "D_CMI", force: :cascade do |t|
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

  create_table "D_CNC", force: :cascade do |t|
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

  create_table "D_COF", force: :cascade do |t|
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

  create_table "D_CTL", force: :cascade do |t|
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

  create_table "D_CYH", force: :cascade do |t|
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

  create_table "D_DD", force: :cascade do |t|
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

  create_table "D_DG", force: :cascade do |t|
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

  create_table "D_DHR", force: :cascade do |t|
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

  create_table "D_DISH", force: :cascade do |t|
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

  create_table "D_DUK", force: :cascade do |t|
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

  create_table "D_DVN", force: :cascade do |t|
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

  create_table "D_EBAY", force: :cascade do |t|
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

  create_table "D_EMC", force: :cascade do |t|
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

  create_table "D_EMR", force: :cascade do |t|
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

  create_table "D_EOG", force: :cascade do |t|
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

  create_table "D_EXC", force: :cascade do |t|
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

  create_table "D_FCX", force: :cascade do |t|
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

  create_table "D_FE", force: :cascade do |t|
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

  create_table "D_FLR", force: :cascade do |t|
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

  create_table "D_FOX", force: :cascade do |t|
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

  create_table "D_GD", force: :cascade do |t|
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

  create_table "D_GILD", force: :cascade do |t|
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

  create_table "D_GIS", force: :cascade do |t|
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

  create_table "D_GLP", force: :cascade do |t|
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

  create_table "D_GM", force: :cascade do |t|
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

  create_table "D_GPC", force: :cascade do |t|
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

  create_table "D_GPS", force: :cascade do |t|
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

  create_table "D_GT", force: :cascade do |t|
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

  create_table "D_HES", force: :cascade do |t|
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

  create_table "D_HFC", force: :cascade do |t|
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

  create_table "D_HIG", force: :cascade do |t|
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

  create_table "D_IEP", force: :cascade do |t|
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

  create_table "D_IP", force: :cascade do |t|
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

  create_table "D_ITW", force: :cascade do |t|
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

  create_table "D_JBL", force: :cascade do |t|
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

  create_table "D_KMB", force: :cascade do |t|
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

  create_table "D_KMI", force: :cascade do |t|
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

  create_table "D_KSS", force: :cascade do |t|
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

  create_table "D_LEA", force: :cascade do |t|
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

  create_table "D_LLY", force: :cascade do |t|
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

  create_table "D_LUV", force: :cascade do |t|
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

  create_table "D_M", force: :cascade do |t|
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

  create_table "D_MAN", force: :cascade do |t|
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

  create_table "D_MO", force: :cascade do |t|
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

  create_table "D_MON", force: :cascade do |t|
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

  create_table "D_MU", force: :cascade do |t|
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

  create_table "D_MUSA", force: :cascade do |t|
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

  create_table "D_NEE", force: :cascade do |t|
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

  create_table "D_NOC", force: :cascade do |t|
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

  create_table "D_NOV", force: :cascade do |t|
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

  create_table "D_NRG", force: :cascade do |t|
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

  create_table "D_NUE", force: :cascade do |t|
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

  create_table "D_NWE", force: :cascade do |t|
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

  create_table "D_ODP", force: :cascade do |t|
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

  create_table "D_OMC", force: :cascade do |t|
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

  create_table "D_OXY", force: :cascade do |t|
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

  create_table "D_PAG", force: :cascade do |t|
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

  create_table "D_PBF", force: :cascade do |t|
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

  create_table "D_PCAR", force: :cascade do |t|
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

  create_table "D_PCG", force: :cascade do |t|
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

  create_table "D_PGR", force: :cascade do |t|
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

  create_table "D_PM", force: :cascade do |t|
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

  create_table "D_PNC", force: :cascade do |t|
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

  create_table "D_PPG", force: :cascade do |t|
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

  create_table "D_QCOM", force: :cascade do |t|
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

  create_table "D_RAD", force: :cascade do |t|
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

  create_table "D_RTN", force: :cascade do |t|
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

  create_table "D_SHLD", force: :cascade do |t|
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

  create_table "D_SO", force: :cascade do |t|
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

  create_table "D_SPLS", force: :cascade do |t|
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

  create_table "D_SVU", force: :cascade do |t|
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

  create_table "D_TECD", force: :cascade do |t|
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

  create_table "D_THC", force: :cascade do |t|
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

  create_table "D_TJX", force: :cascade do |t|
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

  create_table "D_TMO", force: :cascade do |t|
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

  create_table "D_TWC", force: :cascade do |t|
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

  create_table "D_TWX", force: :cascade do |t|
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

  create_table "D_UNP", force: :cascade do |t|
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

  create_table "D_USB", force: :cascade do |t|
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

  create_table "D_WDC", force: :cascade do |t|
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

  create_table "D_WHR", force: :cascade do |t|
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

  create_table "D_WNR", force: :cascade do |t|
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

  create_table "D_XRX", force: :cascade do |t|
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

  create_table "notes", force: :cascade do |t|
    t.string   "symbol",     limit: 255
    t.datetime "datetime"
    t.string   "pattern",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
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
    t.float    "rating",     limit: 24
  end

end
