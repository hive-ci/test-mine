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

ActiveRecord::Schema.define(version: 20140218211529) do

  create_table "runs", force: true do |t|
    t.integer  "world_id"
    t.string   "owner"
    t.integer  "hive_job_id"
    t.string   "target"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "runs", ["world_id"], name: "index_runs_on_world_id"

  create_table "suites", force: true do |t|
    t.string   "project"
    t.string   "name"
    t.string   "runner"
    t.string   "description"
    t.text     "documentation"
    t.string   "url"
    t.string   "repo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_definitions", force: true do |t|
    t.string   "name"
    t.string   "node_type"
    t.text     "description"
    t.string   "file_name"
    t.integer  "line"
    t.integer  "test_suite_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "worlds", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.text     "description"
    t.string   "project"
    t.string   "component"
    t.string   "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "worlds", ["component", "version"], name: "index_worlds_on_component_and_version"

end