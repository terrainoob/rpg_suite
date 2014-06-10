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

ActiveRecord::Schema.define(version: 20140610191457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_class_skills", force: true do |t|
    t.integer  "character_class_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "character_class_skills", ["character_class_id"], name: "index_character_class_skills_on_character_class_id", using: :btree
  add_index "character_class_skills", ["skill_id"], name: "index_character_class_skills_on_skill_id", using: :btree

  create_table "character_classes", force: true do |t|
    t.string   "name",                 null: false
    t.text     "description"
    t.string   "hit_die"
    t.string   "start_wealth"
    t.integer  "skills_per_level"
    t.string   "skills_per_level_mod"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_skills", force: true do |t|
    t.integer  "character_id",             null: false
    t.integer  "skill_id",                 null: false
    t.integer  "ranks",        default: 0, null: false
    t.integer  "ability_mod",  default: 0, null: false
    t.integer  "class_mod",    default: 0, null: false
    t.integer  "race_mod",     default: 0, null: false
    t.integer  "misc_mod",     default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "character_skills", ["character_id"], name: "index_character_skills_on_character_id", using: :btree
  add_index "character_skills", ["skill_id"], name: "index_character_skills_on_skill_id", using: :btree

  create_table "characters", force: true do |t|
    t.integer  "user_id",                                null: false
    t.string   "name",                                   null: false
    t.integer  "level",              default: 1,         null: false
    t.string   "deity"
    t.string   "homeland"
    t.string   "alignment",          default: "neutral", null: false
    t.string   "gender",             default: "male",    null: false
    t.integer  "age"
    t.string   "height"
    t.integer  "weight"
    t.string   "hair"
    t.string   "eyes"
    t.integer  "str",                default: 0,         null: false
    t.integer  "dex",                default: 0,         null: false
    t.integer  "con",                default: 0,         null: false
    t.integer  "int",                default: 0,         null: false
    t.integer  "wis",                default: 0,         null: false
    t.integer  "cha",                default: 0,         null: false
    t.integer  "max_hp",             default: 1,         null: false
    t.integer  "current_hp",         default: 1,         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "race_id"
    t.integer  "character_class_id"
  end

  add_index "characters", ["character_class_id"], name: "index_characters_on_character_class_id", using: :btree
  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "races", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.string   "size"
    t.integer  "speed"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name",          null: false
    t.text     "description"
    t.boolean  "untrained"
    t.boolean  "armor_penalty"
    t.string   "key_ability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
