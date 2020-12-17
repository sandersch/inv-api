# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_09_051256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armor_bases", force: :cascade do |t|
    t.string "group"
    t.string "name"
    t.integer "weight"
    t.integer "rt"
    t.integer "ap"
    t.integer "cva"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.integer "enchant"
    t.integer "ensorcell"
    t.integer "critical_services"
    t.integer "damage_services"
    t.integer "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "armor_base_id", null: false
    t.index ["armor_base_id"], name: "index_armors_on_armor_base_id"
  end

  create_table "item_properties", force: :cascade do |t|
    t.string "slot"
    t.string "kind"
    t.string "effect"
    t.integer "amount"
    t.boolean "temporary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "armor_id", null: false
    t.index ["armor_id"], name: "index_item_properties_on_armor_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resistances", force: :cascade do |t|
    t.string "kind"
    t.integer "percent_protection"
    t.boolean "temporary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "armor_id", null: false
    t.index ["armor_id"], name: "index_resistances_on_armor_id"
  end

  add_foreign_key "armors", "armor_bases", column: "armor_base_id"
  add_foreign_key "item_properties", "armors"
  add_foreign_key "resistances", "armors"
end
