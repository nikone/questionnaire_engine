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

ActiveRecord::Schema.define(:version => 20130927205655) do

  create_table "qe_answer_sheet_question_sheets", :force => true do |t|
    t.integer  "answer_sheet_id"
    t.integer  "question_sheet_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "qe_answer_sheets", :force => true do |t|
    t.integer  "question_sheet_id", :null => false
    t.datetime "completed_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "qe_answers", :force => true do |t|
    t.integer  "answer_sheet_id",         :null => false
    t.integer  "question_id",             :null => false
    t.text     "value"
    t.string   "short_value"
    t.integer  "attachment_file_size"
    t.string   "attachment_content_type"
    t.string   "attachment_file_name"
    t.datetime "attachment_updated_at"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "qe_answers", ["answer_sheet_id"], :name => "index_qe_answers_on_answer_sheet_id"
  add_index "qe_answers", ["question_id"], :name => "index_qe_answers_on_question_id"
  add_index "qe_answers", ["short_value"], :name => "index_qe_answers_on_short_value"

  create_table "qe_conditions", :force => true do |t|
    t.integer  "question_sheet_id", :null => false
    t.integer  "trigger_id",        :null => false
    t.string   "expression",        :null => false
    t.integer  "toggle_page_id",    :null => false
    t.integer  "toggle_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "qe_elements", :force => true do |t|
    t.integer  "question_grid_id"
    t.string   "kind",                      :limit => 40,                    :null => false
    t.string   "style",                     :limit => 40
    t.string   "label"
    t.text     "content"
    t.boolean  "required"
    t.string   "slug",                      :limit => 36
    t.integer  "position"
    t.string   "object_name"
    t.string   "attribute_name"
    t.string   "source"
    t.string   "value_xpath"
    t.string   "text_xpath"
    t.string   "cols"
    t.boolean  "is_confidential",                         :default => false
    t.string   "total_cols"
    t.string   "css_id"
    t.string   "css_class"
    t.integer  "question_sheet_id",                                          :null => false
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
    t.integer  "related_question_sheet_id"
    t.integer  "conditional_id"
    t.text     "tooltip"
    t.boolean  "hide_label",                              :default => false
    t.boolean  "hide_option_labels",                      :default => false
    t.integer  "max_length"
  end

  add_index "qe_elements", ["conditional_id"], :name => "index_qe_elements_on_conditional_id"
  add_index "qe_elements", ["question_grid_id"], :name => "index_qe_elements_on_question_grid_id"
  add_index "qe_elements", ["slug"], :name => "index_qe_elements_on_slug"

  create_table "qe_email_templates", :force => true do |t|
    t.string   "name",       :limit => 1000, :null => false
    t.text     "content"
    t.boolean  "enabled"
    t.string   "subject"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "qe_email_templates", ["name"], :name => "index_qe_email_templates_on_name"

  create_table "qe_page_elements", :force => true do |t|
    t.integer  "page_id"
    t.integer  "element_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "qe_pages", :force => true do |t|
    t.integer  "question_sheet_id",                                  :null => false
    t.string   "label",             :limit => 60,                    :null => false
    t.integer  "number"
    t.boolean  "no_cache",                        :default => false
    t.boolean  "hidden",                          :default => false
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "qe_question_sheets", :force => true do |t|
    t.string   "label",      :limit => 100,                    :null => false
    t.boolean  "archived",                  :default => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "qe_reference_sheets", :force => true do |t|
    t.integer  "question_id"
    t.integer  "applicant_answer_sheet_id"
    t.datetime "email_sent_at"
    t.string   "relationship"
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "status"
    t.datetime "submitted_at"
    t.string   "access_key"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
