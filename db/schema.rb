{\rtf1\ansi\ansicpg932\cocoartf1561\cocoasubrtf400
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # This file is auto-generated from the current state of the database. Instead\
# of editing this file, please use the migrations feature of Active Record to\
# incrementally modify your database, and then regenerate this schema definition.\
#\
# Note that this schema.rb definition is the authoritative source for your\
# database schema. If you need to create the application database on another\
# system, you should be using db:schema:load, not running all the migrations\
# from scratch. The latter is a flawed and unsustainable approach (the more migrations\
# you'll amass, the slower it'll run and the greater likelihood for issues).\
#\
# It's strongly recommended that you check this file into your version control system.\
\
ActiveRecord::Schema.define(version: 20180630020116) do\
\
  create_table "actions", force: :cascade do |t|\
    t.integer "user_id"\
    t.integer "type_id"\
    t.float "start_time"\
    t.float "end_time"\
    t.datetime "created_at", null: false\
    t.datetime "updated_at", null: false\
  end\
\
  create_table "users", force: :cascade do |t|\
    t.string "name"\
    t.string "pass"\
    t.string "nick"\
    t.datetime "created_at", null: false\
    t.datetime "updated_at", null: false\
  end\
\
  create_table "usyuruis", force: :cascade do |t|\
    t.string "kyoudo"\
    t.string "Uname"\
    t.float "cal"\
    t.datetime "created_at", null: false\
    t.datetime "updated_at", null: false\
  end\
\
end\
}