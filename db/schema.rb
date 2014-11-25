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

ActiveRecord::Schema.define(version: 20141002223902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hats", force: true do |t|
    t.string   "color"
    t.integer  "size"
    t.integer  "wizard_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hats", ["wizard_id"], name: "index_hats_on_wizard_id", using: :btree

  create_table "houses", force: true do |t|
    t.string   "name"
    t.string   "founder"
    t.string   "animal"
    t.string   "head"
    t.string   "ghost"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wizards", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "house"
    t.boolean  "is_muggle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
