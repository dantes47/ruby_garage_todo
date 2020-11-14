json.extract! todo_list_todo_item, :id, :description, :completed, :completed_at, :todo_list_id, :created_at, :updated_at
json.url todo_list_todo_item_url(todo_list_todo_item, format: :json)
