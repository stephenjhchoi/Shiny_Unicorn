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

ActiveRecord::Schema.define(version: 20170303141925) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "date"
    t.integer  "user_id"
    t.integer  "spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_bookings_on_spot_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "venue_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
    t.index ["venue_id"], name: "index_favorites_on_venue_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "hotness_level"
    t.date     "date"
    t.string   "time"
    t.text     "description"
    t.integer  "staff_level"
    t.integer  "noise_level"
    t.integer  "couch_comfort"
    t.integer  "user_id"
    t.integer  "venue_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
    t.index ["venue_id"], name: "index_reviews_on_venue_id", using: :btree
  end

  create_table "spots", force: :cascade do |t|
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["venue_id"], name: "index_spots_on_venue_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "venue_categories", force: :cascade do |t|
    t.integer  "venue_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_venue_categories_on_category_id", using: :btree
    t.index ["venue_id"], name: "index_venue_categories_on_venue_id", using: :btree
  end

  create_table "venues", force: :cascade do |t|
    t.string   "address"
    t.string   "mood"
    t.text     "description"
    t.integer  "price"
    t.integer  "light_level"
    t.integer  "noise_level"
    t.integer  "couch_comfort"
    t.integer  "staff_level"
    t.integer  "unicorn_score"
    t.integer  "distance_from_bed"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "area"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name"
  end

  add_foreign_key "bookings", "spots"
  add_foreign_key "bookings", "users"
  add_foreign_key "favorites", "users"
  add_foreign_key "favorites", "venues"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "venues"
  add_foreign_key "spots", "venues"
  add_foreign_key "venue_categories", "categories"
  add_foreign_key "venue_categories", "venues"
end
