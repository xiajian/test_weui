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

ActiveRecord::Schema.define(version: 20160512072613) do

  create_table "spina_accounts", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "address",        limit: 255
    t.string   "postal_code",    limit: 255
    t.string   "city",           limit: 255
    t.string   "phone",          limit: 255
    t.string   "email",          limit: 255
    t.text     "preferences",    limit: 65535
    t.string   "logo",           limit: 255
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "kvk_identifier", limit: 255
    t.string   "vat_identifier", limit: 255
    t.boolean  "robots_allowed",               default: false
  end

  create_table "spina_attachment_collections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spina_attachment_collections_attachments", force: :cascade do |t|
    t.integer "attachment_collection_id", limit: 4
    t.integer "attachment_id",            limit: 4
  end

  create_table "spina_attachments", force: :cascade do |t|
    t.string   "file",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "spina_colors", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spina_layout_parts", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.string   "name",                 limit: 255
    t.integer  "layout_partable_id",   limit: 4
    t.string   "layout_partable_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id",           limit: 4
  end

  create_table "spina_line_translations", force: :cascade do |t|
    t.integer  "spina_line_id", limit: 4,   null: false
    t.string   "locale",        limit: 255, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "content",       limit: 255
  end

  add_index "spina_line_translations", ["locale"], name: "index_spina_line_translations_on_locale", using: :btree
  add_index "spina_line_translations", ["spina_line_id"], name: "index_spina_line_translations_on_spina_line_id", using: :btree

  create_table "spina_lines", force: :cascade do |t|
    t.string   "content",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spina_page_parts", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "name",               limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "page_id",            limit: 4
    t.integer  "page_partable_id",   limit: 4
    t.string   "page_partable_type", limit: 255
  end

  create_table "spina_page_translations", force: :cascade do |t|
    t.integer  "spina_page_id",     limit: 4,   null: false
    t.string   "locale",            limit: 255, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "title",             limit: 255
    t.string   "menu_title",        limit: 255
    t.string   "description",       limit: 255
    t.string   "seo_title",         limit: 255
    t.string   "materialized_path", limit: 255
  end

  add_index "spina_page_translations", ["locale"], name: "index_spina_page_translations_on_locale", using: :btree
  add_index "spina_page_translations", ["spina_page_id"], name: "index_spina_page_translations_on_spina_page_id", using: :btree

  create_table "spina_pages", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.string   "menu_title",          limit: 255
    t.string   "description",         limit: 255
    t.boolean  "show_in_menu",                    default: true
    t.string   "slug",                limit: 255
    t.boolean  "deletable",                       default: true
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                limit: 255
    t.string   "seo_title",           limit: 255
    t.boolean  "skip_to_first_child",             default: false
    t.string   "view_template",       limit: 255
    t.string   "layout_template",     limit: 255
    t.boolean  "draft",                           default: false
    t.string   "link_url",            limit: 255
    t.string   "ancestry",            limit: 255
    t.integer  "position",            limit: 4
    t.string   "materialized_path",   limit: 255
    t.boolean  "active",                          default: true
  end

  create_table "spina_photo_collections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spina_photo_collections_photos", force: :cascade do |t|
    t.integer "photo_collection_id", limit: 4
    t.integer "photo_id",            limit: 4
    t.integer "position",            limit: 4
  end

  create_table "spina_photos", force: :cascade do |t|
    t.string   "file",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "spina_rewrite_rules", force: :cascade do |t|
    t.string   "old_path",   limit: 255
    t.string   "new_path",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spina_structure_items", force: :cascade do |t|
    t.integer  "structure_id", limit: 4
    t.integer  "position",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spina_structure_items", ["structure_id"], name: "index_spina_structure_items_on_structure_id", using: :btree

  create_table "spina_structure_parts", force: :cascade do |t|
    t.integer  "structure_item_id",       limit: 4
    t.integer  "structure_partable_id",   limit: 4
    t.string   "structure_partable_type", limit: 255
    t.string   "name",                    limit: 255
    t.string   "title",                   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spina_structure_parts", ["structure_item_id"], name: "index_spina_structure_parts_on_structure_item_id", using: :btree
  add_index "spina_structure_parts", ["structure_partable_id"], name: "index_spina_structure_parts_on_structure_partable_id", using: :btree

  create_table "spina_structures", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spina_text_translations", force: :cascade do |t|
    t.integer  "spina_text_id", limit: 4,     null: false
    t.string   "locale",        limit: 255,   null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.text     "content",       limit: 65535
  end

  add_index "spina_text_translations", ["locale"], name: "index_spina_text_translations_on_locale", using: :btree
  add_index "spina_text_translations", ["spina_text_id"], name: "index_spina_text_translations_on_spina_text_id", using: :btree

  create_table "spina_texts", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spina_users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.boolean  "admin",                       default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.datetime "last_logged_in"
  end

end
