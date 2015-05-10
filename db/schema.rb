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

ActiveRecord::Schema.define(version: 20150510222757) do

  create_table "voters", force: :cascade do |t|
    t.string   "lVoterUniqueID"
    t.string   "sAffNumber"
    t.string   "szStateVoterID"
    t.string   "sVoterTitle"
    t.string   "szNameLast"
    t.string   "szNameFirst"
    t.string   "szNameMiddle"
    t.string   "sNameSuffix"
    t.string   "sGender"
    t.string   "szSitusAddress"
    t.string   "szSitusCity"
    t.string   "sSitusState"
    t.string   "sSitusZip"
    t.string   "sHouseNum"
    t.string   "sUnitAbbr"
    t.string   "sUnitNum"
    t.string   "szStreetName"
    t.string   "sStreetSuffix"
    t.string   "sPreDir"
    t.string   "sPostDir"
    t.string   "szMailAddress1"
    t.string   "szMailAddress2"
    t.string   "szMailAddress3"
    t.string   "szMailAddress4"
    t.string   "szMailZip"
    t.string   "szPhone"
    t.string   "szEmailAddress"
    t.string   "dtBirthDate"
    t.string   "sBirthPlace"
    t.string   "dtRegDate"
    t.string   "dtOrigRegDate"
    t.string   "dtLastUpdate_dt"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
