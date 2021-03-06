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

ActiveRecord::Schema.define(version: 20141021091432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "assetinventories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "institute_category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_details", force: true do |t|
    t.string   "category"
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "institute_group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institue_categories", force: true do |t|
    t.string   "category"
    t.string   "category_name"
    t.string   "ckt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institue_categories1s", force: true do |t|
    t.string   "category"
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "internets", force: true do |t|
    t.string   "LoopBack4_IP"
    t.string   "LoopBack6_IP"
    t.string   "Public_Segment4_IP"
    t.string   "Public_Segment6_IP"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ip_details", force: true do |t|
    t.string   "LoopBack4_IP"
    t.string   "LoopBack6_IP"
    t.string   "Public_Segment4_IP"
    t.string   "Public_Segment6_IP"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ipcs", force: true do |t|
    t.string   "LoopBack4_IP"
    t.string   "LoopBack6_IP"
    t.string   "Public_Segment4_ip"
    t.string   "Public_Segment6_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ips", force: true do |t|
    t.string   "LoopBack4_IP"
    t.string   "LoopBack6_IP"
    t.string   "Public_Segment4_IP"
    t.string   "Public_Segment6_IP"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "isp_details", force: true do |t|
    t.string   "isp_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "isp_ds", force: true do |t|
    t.string   "isp"
    t.string   "isp_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "isps", force: true do |t|
    t.string   "isp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "isps1s", force: true do |t|
    t.string   "isp_id"
    t.string   "isp_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "isps_details", force: true do |t|
    t.string   "isp"
    t.string   "isp_name"
    t.string   "ckt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "state_id"
    t.string   "state_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", force: true do |t|
    t.integer  "state"
    t.string   "state_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "national_long_distances", force: true do |t|
    t.string   "nld_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nations", force: true do |t|
    t.string   "state"
    t.string   "state_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nlds_details", force: true do |t|
    t.integer  "nld"
    t.string   "nld_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "soap"
    t.string   "shampoo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "state_details", force: true do |t|
    t.string   "state"
    t.string   "state_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "state"
    t.string   "state_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "things", force: true do |t|
    t.string   "state"
    t.string   "state_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tnusers", force: true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
