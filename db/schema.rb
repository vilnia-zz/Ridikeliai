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

ActiveRecord::Schema.define(version: 20180511114428) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "category_recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "category_id"
    t.integer  "recipe_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_category_recipes_on_category_id", using: :btree
    t.index ["recipe_id"], name: "index_category_recipes_on_recipe_id", using: :btree
  end

  create_table "ingredient_recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "ingredient_id"
    t.integer  "measurement_id"
    t.integer  "recipe_id"
    t.decimal  "quantity",       precision: 10
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["ingredient_id"], name: "index_ingredient_recipes_on_ingredient_id", using: :btree
    t.index ["measurement_id"], name: "index_ingredient_recipes_on_measurement_id", using: :btree
    t.index ["recipe_id"], name: "index_ingredient_recipes_on_recipe_id", using: :btree
  end

  create_table "ingredients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "measurement_alloweds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "ingredient_id"
    t.integer  "measurement_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["ingredient_id"], name: "index_measurement_alloweds_on_ingredient_id", using: :btree
    t.index ["measurement_id"], name: "index_measurement_alloweds_on_measurement_id", using: :btree
  end

  create_table "measurements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_recipes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "userName"
    t.string   "name"
    t.string   "description"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "category_recipes", "categories"
  add_foreign_key "category_recipes", "recipes"
  add_foreign_key "ingredient_recipes", "ingredients"
  add_foreign_key "ingredient_recipes", "measurements"
  add_foreign_key "ingredient_recipes", "recipes"
  add_foreign_key "measurement_alloweds", "ingredients"
  add_foreign_key "measurement_alloweds", "measurements"
  add_foreign_key "recipes", "users"
end
