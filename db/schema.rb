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

ActiveRecord::Schema.define(version: 20140912172351) do

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "phone"
    t.string   "email"
    t.date     "rent_start"
    t.date     "rent_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "readings", force: true do |t|
    t.string   "date"
    t.string   "string"
    t.string   "cold_water"
    t.string   "float"
    t.string   "central_heating"
    t.float    "hot_water"
    t.string   "electricity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
