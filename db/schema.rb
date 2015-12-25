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

ActiveRecord::Schema.define(version: 20151225145820) do

  create_table "permission_groups", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "permission_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "permission_groups", ["permission_id"], name: "index_permission_groups_on_permission_id"
  add_index "permission_groups", ["role_id"], name: "index_permission_groups_on_role_id"

  create_table "permissions", force: :cascade do |t|
    t.string   "resource_name"
    t.string   "type_of_crud"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "role_assignments", force: :cascade do |t|
    t.integer  "user_login_id"
    t.integer  "role_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "role_assignments", ["role_id"], name: "index_role_assignments_on_role_id"
  add_index "role_assignments", ["user_login_id"], name: "index_role_assignments_on_user_login_id"

  create_table "roles", force: :cascade do |t|
    t.string   "role_name"
    t.string   "role_alias"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",                  null: false
    t.integer  "contact",    limit: 12
    t.string   "address"
    t.string   "city",                  null: false
    t.string   "state"
    t.string   "branch"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "alias"
  end

  create_table "user_logins", force: :cascade do |t|
    t.string   "username",                          null: false
    t.string   "email"
    t.integer  "contact"
    t.string   "password_digest"
    t.string   "last_ip_address"
    t.boolean  "activation_status", default: false
    t.boolean  "locked_status",     default: false
    t.integer  "school_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "user_logins", ["email"], name: "index_user_logins_on_email"
  add_index "user_logins", ["school_id"], name: "index_user_logins_on_school_id"
  add_index "user_logins", ["username"], name: "index_user_logins_on_username"

end
