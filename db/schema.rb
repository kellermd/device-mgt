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

ActiveRecord::Schema.define(version: 20160827171646) do

  create_table "accounts", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "lock_version", default: 0, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "account_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "lock_version", default: 0, null: false
    t.index ["account_id"], name: "index_locations_on_account_id"
  end

  create_table "machine_account_locations", force: :cascade do |t|
    t.integer  "machine_id",                  null: false
    t.integer  "account_id"
    t.integer  "location_id"
    t.datetime "begin_date_time",             null: false
    t.datetime "end_date_time"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "lock_version",    default: 0, null: false
    t.index ["account_id"], name: "index_machine_account_locations_on_account_id"
    t.index ["location_id"], name: "index_machine_account_locations_on_location_id"
    t.index ["machine_id"], name: "index_machine_account_locations_on_machine_id"
  end

  create_table "machine_classes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "lock_version", default: 0, null: false
  end

  create_table "machine_manufacturers", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "lock_version", default: 0, null: false
  end

  create_table "machine_models", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "machine_manufacturer_id"
    t.integer  "machine_class_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "lock_version",            default: 0, null: false
    t.index ["machine_class_id"], name: "index_machine_models_on_machine_class_id"
    t.index ["machine_manufacturer_id"], name: "index_machine_models_on_machine_manufacturer_id"
  end

  create_table "machines", force: :cascade do |t|
    t.string   "code"
    t.string   "serial_number"
    t.integer  "machine_model_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "lock_version",     default: 0, null: false
    t.index ["machine_model_id"], name: "index_machines_on_machine_model_id"
  end

end
