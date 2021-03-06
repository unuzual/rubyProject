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

ActiveRecord::Schema.define(version: 20151128031735) do

  create_table "albums", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "ano",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "artists_id", limit: 4
  end

  add_index "albums", ["artists_id"], name: "index_albums_on_artists_id", using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "generos_id", limit: 4
  end

  add_index "artists", ["generos_id"], name: "index_artists_on_generos_id", using: :btree

  create_table "generos", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "generos", ["name"], name: "index_generos_on_name", unique: true, using: :btree

  create_table "musicas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "artists_id", limit: 4
    t.integer  "albums_id",  limit: 4
  end

  add_index "musicas", ["albums_id"], name: "index_musicas_on_albums_id", using: :btree
  add_index "musicas", ["artists_id"], name: "index_musicas_on_artists_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
    t.string   "remember_digest", limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
