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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120213143301) do

  create_table "clients", :force => true do |t|
    t.string   "pass"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "login"
    t.boolean  "admin"
  end

  create_table "evaluations", :force => true do |t|
    t.integer  "run_id"
    t.integer  "note"
    t.integer  "snowQual"
    t.string   "pers"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hills", :force => true do |t|
    t.string   "name"
    t.decimal  "snow_cover_bottom"
    t.decimal  "snow_cover_top"
    t.integer  "lifts_open"
    t.integer  "lifts_total"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "run_types", :force => true do |t|
    t.string   "label"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "runs", :force => true do |t|
    t.integer  "hill_id"
    t.integer  "run_type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "open"
    t.string   "name"
  end

  add_index "runs", ["hill_id"], :name => "index_runs_on_hill_id"
  add_index "runs", ["open"], :name => "index_runs_on_open"
  add_index "runs", ["run_type_id"], :name => "index_runs_on_run_type_id"

end
