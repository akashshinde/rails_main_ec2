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

ActiveRecord::Schema.define(version: 20141110175058) do

  create_table "bbhks", force: true do |t|
    t.string   "hall_size"
    t.string   "bed1_size"
    t.string   "bed2_size"
    t.string   "kitchen_size"
    t.string   "floor"
    t.boolean  "sold_out"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sold_amount"
  end

# Could not dump table "bhks" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "buyers" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "flats" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "floors", force: true do |t|
    t.string   "floor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "hks" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "images", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bhk_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "details"
  end

  add_index "images", ["bhk_id"], name: "index_images_on_bhk_id"

  create_table "p_images", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "details"
    t.integer  "project_id"
  end

  add_index "p_images", ["project_id"], name: "index_p_images_on_project_id"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "no_of_flats"
    t.text     "parking_area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "floor"
    t.string   "floor_size"
    t.text     "details"
  end

# Could not dump table "transactions" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
