# frozen_string_literal: true

class TodoItemReflex < ApplicationReflex

  def complete
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completed: true, completed_at: Time.now)
  end

  def incomplete
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completed: false, completed_at: nil)
  end

end
