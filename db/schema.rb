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

ActiveRecord::Schema.define(version: 20160121043507) do

  create_table "admins", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "dish_images", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "dish_id",    limit: 4
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.text     "description",  limit: 65535
    t.integer  "restarant_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "guests", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "introduce_images", force: :cascade do |t|
    t.integer  "restarant_id", limit: 4
    t.string   "name",         limit: 255
    t.string   "url",          limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "master_categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "restarants", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.integer  "restaurant_owner_id", limit: 4
    t.string   "address",             limit: 255
    t.float    "latitude",            limit: 24
    t.float    "longitude",           limit: 24
    t.text     "description",         limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "restaurant_categories", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "restaurant_id", limit: 4
    t.text     "description",   limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "restaurant_category_dishes", force: :cascade do |t|
    t.integer  "restaurant_category_id", limit: 4
    t.integer  "dish_id",                limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "restaurant_master_categories", force: :cascade do |t|
    t.integer  "restarant_id",       limit: 4
    t.integer  "master_category_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "restaurant_owners", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
