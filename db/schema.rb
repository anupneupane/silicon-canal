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

ActiveRecord::Schema.define(version: 20130807134748) do

  create_table "companies", force: true do |t|
    t.string   "name",                     null: false
    t.string   "tagline",     default: "", null: false
    t.text     "description", default: "", null: false
    t.text     "address",     default: "", null: false
    t.string   "url",         default: "", null: false
    t.string   "twitter",     default: "", null: false
    t.string   "crunchbase",  default: "", null: false
    t.text     "tags",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_category_events", force: true do |t|
    t.integer  "event_category_id", null: false
    t.integer  "event_id",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.text     "description"
    t.string   "location"
    t.string   "website"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "approved_at"
  end

  create_table "people", force: true do |t|
    t.string   "name",                    null: false
    t.string   "tagline",    default: "", null: false
    t.text     "bio",        default: "", null: false
    t.string   "twitter",    default: "", null: false
    t.string   "linkedin",   default: "", null: false
    t.string   "url",        default: "", null: false
    t.string   "email",      default: "", null: false
    t.text     "skills",                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_event_categories", force: true do |t|
    t.integer  "event_category_id", null: false
    t.integer  "user_id",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.boolean  "admin"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "versions", force: true do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

end
