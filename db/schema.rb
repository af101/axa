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

ActiveRecord::Schema.define(version: 20130901193614) do

  create_table "causas", force: true do |t|
    t.string   "luogo"
    t.datetime "data"
    t.string   "chiamante"
    t.string   "chiamato"
    t.string   "avvocato_chiamante"
    t.string   "avvocato_chiamato"
    t.string   "giudice"
    t.string   "codice_causa"
  end

end