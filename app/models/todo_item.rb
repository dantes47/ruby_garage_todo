class TodoItem < ApplicationRecord
  belongs_to :todo_list

  scope :completed, -> { where(completed: true) }
end
