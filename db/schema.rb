
ActiveRecord::Schema.define(version: 2020_11_14_090406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "todo_items", force: :cascade do |t|
    t.text "description"
    t.boolean "completed"
    t.datetime "completed_at"
    t.bigint "todo_list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["todo_list_id"], name: "index_todo_items_on_todo_list_id"
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "todo_items", "todo_lists"
end
