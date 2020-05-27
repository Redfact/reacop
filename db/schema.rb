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

ActiveRecord::Schema.define(version: 2020_05_27_135703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "an_interessants", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "annonce_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["annonce_id"], name: "index_an_interessants_on_annonce_id"
    t.index ["user_id"], name: "index_an_interessants_on_user_id"
  end

  create_table "annonces", force: :cascade do |t|
    t.string "lieu"
    t.integer "capacite"
    t.text "description"
    t.string "prix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favoris", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "annonce_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["annonce_id"], name: "index_favoris_on_annonce_id"
    t.index ["user_id"], name: "index_favoris_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "contenu"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.text "description"
    t.text "personnalite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end