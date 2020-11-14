class TodoList < ApplicationRecord
  has_many :todo_items

  def badge_color
    case percent_complete.to_i
      when 0
        'dark'
      when 100
        'info'
      else
        'primary'
    end
  end

  def status
    case percent_complete.to_i
      when 0
        'Nothing done, yet..'
        when 100
          'It\'s finished!'
        else
          'In progress..'
    end
  end

  def total_items
    @total_items ||= todo_items.count
  end

  def completed_items
    @completed_items ||= todo_items.completed.count
  end

  def percent_complete
    return 0 if total_items.zero?
    ((completed_items.to_f / total_items) * 100).round(1)
  end
end
