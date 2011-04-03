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

ActiveRecord::Schema.define(:version => 20110403130104) do

  create_table "activities", :force => true do |t|
    t.datetime "created_at"
    t.date     "date"
    t.integer  "repeat_activity_id"
    t.string   "sport"
    t.decimal  "distance",           :precision => 5, :scale => 2
    t.integer  "duration"
  end

  create_table "events", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date",        :null => false
    t.string   "description", :null => false
  end

  create_table "repeat_activities", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sport",                                     :null => false
    t.decimal  "distance",    :precision => 5, :scale => 2
    t.string   "name",                                      :null => false
    t.string   "description",                               :null => false
    t.integer  "duration"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",   :null => false
    t.string   "password",   :null => false
  end

  create_table "weighings", :force => true do |t|
    t.datetime "created_at"
    t.decimal  "weight",     :precision => 3, :scale => 1
  end

  add_foreign_key "activities", "repeat_activities", :name => "activities_repeat_activity_id_fk"

end
