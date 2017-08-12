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

ActiveRecord::Schema.define(version: 20170807020403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barangs", force: :cascade do |t|
    t.string   "id_barang"
    t.integer  "kategori_id"
    t.string   "type_barang"
    t.string   "unit"
    t.string   "warna"
    t.string   "berat"
    t.string   "warehouse"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cat_bloks", force: :cascade do |t|
    t.integer  "cetak_blok_id"
    t.integer  "hasil"
    t.integer  "rusak"
    t.string   "keterangan"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cat_gtgs", force: :cascade do |t|
    t.integer  "gosok_id"
    t.integer  "hasil"
    t.integer  "rusak"
    t.string   "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cetak_bloks", force: :cascade do |t|
    t.integer  "ip_id"
    t.integer  "hasil"
    t.integer  "rusak"
    t.string   "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cetak_gtgs", force: :cascade do |t|
    t.integer  "ip_id"
    t.integer  "hasil"
    t.integer  "rusak"
    t.string   "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gosoks", force: :cascade do |t|
    t.integer  "rendam_id"
    t.string   "date"
    t.integer  "hasil"
    t.integer  "rusak"
    t.string   "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hps", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "cat_blok_id"
    t.integer  "cat_gtg_id"
    t.integer  "ip_id"
  end

  create_table "ips", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pb_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "cat_blok_count",   default: 0
    t.integer  "cat_gtg_count",    default: 0
    t.integer  "gosok_count",      default: 0
    t.integer  "hp_count",         default: 0
    t.integer  "ip_gtg_count",     default: 0
    t.integer  "ip_blok_count",    default: 0
    t.integer  "pb_count",         default: 0
    t.integer  "rendam_count",     default: 0
    t.integer  "rp_count",         default: 0
    t.integer  "konfirmasi_count", default: 0
    t.integer  "cetak_gtg_count",  default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "cetak_blok_count", default: 0
  end

  create_table "pbs", force: :cascade do |t|
    t.integer  "rp_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rendams", force: :cascade do |t|
    t.integer  "cetak_gtg_id"
    t.integer  "hasil"
    t.integer  "rusak"
    t.string   "keterangan"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "rps", force: :cascade do |t|
    t.integer  "schedule_qty"
    t.string   "site"
    t.text     "keterangan"
    t.string   "plan_date"
    t.integer  "barang_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "nama_customer"
    t.string   "alamat"
    t.string   "telpon"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "role"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
