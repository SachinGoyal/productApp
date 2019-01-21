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

ActiveRecord::Schema.define(version: 20190121160021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aspects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aspects_products", id: false, force: :cascade do |t|
    t.bigint "aspect_id"
    t.bigint "product_id"
    t.index ["aspect_id"], name: "index_aspects_products_on_aspect_id"
    t.index ["product_id"], name: "index_aspects_products_on_product_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.bigint "aspect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aspect_id"], name: "index_options_on_aspect_id"
  end

  create_table "options_products", id: false, force: :cascade do |t|
    t.bigint "option_id"
    t.bigint "product_id"
    t.index ["option_id"], name: "index_options_products_on_option_id"
    t.index ["product_id"], name: "index_options_products_on_product_id"
  end

  create_table "product_variants", force: :cascade do |t|
    t.bigint "product_id"
    t.string "name"
    t.string "description"
    t.string "sale_message"
    t.float "price"
    t.float "discounted_price"
    t.integer "sign", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_variants_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "sale_message"
    t.float "price"
    t.float "discounted_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "aspects_products", "aspects"
  add_foreign_key "aspects_products", "products"
  add_foreign_key "options_products", "options"
  add_foreign_key "options_products", "products"
  add_foreign_key "product_variants", "products"
end
