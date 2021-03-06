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

ActiveRecord::Schema.define(version: 20141003000737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: true do |t|
    t.string   "title",              default: "untitled"
    t.text     "description",        default: "No description"
    t.integer  "user_id",                                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "count_of_images",    default: 0
    t.integer  "count_of_favorites", default: 0
    t.integer  "count_of_comments",  default: 0
    t.string   "cover_image_url",                               null: false
  end

  add_index "albums", ["user_id"], name: "index_albums_on_user_id", using: :btree

  create_table "comments", force: true do |t|
    t.text     "content",          null: false
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "favorites", force: true do |t|
    t.integer  "user_id",          null: false
    t.integer  "favoritable_id"
    t.string   "favoritable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["user_id", "favoritable_id", "favoritable_type"], name: "index_user_and_favoritables", unique: true, using: :btree

  create_table "follows", force: true do |t|
    t.integer  "follower_id", null: false
    t.integer  "followed_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "follows", ["followed_id"], name: "index_follows_on_followed_id", using: :btree
  add_index "follows", ["follower_id", "followed_id"], name: "index_follows_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "follows", ["follower_id"], name: "index_follows_on_follower_id", using: :btree

  create_table "images", force: true do |t|
    t.string   "image_url",                                     null: false
    t.string   "title",              default: "Untitled"
    t.string   "image_tag",                                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "album_id",                                      null: false
    t.text     "description",        default: "No description"
    t.integer  "count_of_favorites", default: 0
    t.integer  "count_of_comments",  default: 0
  end

  add_index "images", ["album_id"], name: "index_images_on_album_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "session_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "count_of_followers", default: 0
    t.integer  "count_of_followed",  default: 0
    t.integer  "count_of_albums",    default: 0
    t.integer  "count_of_images",    default: 0
    t.string   "slug"
    t.string   "avatar_url",                                              null: false
    t.string   "cover_photo_url",    default: "assets/default_cover.jpg", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
