class Task < ApplicationRecord
  # Validations - Rules for what makes a valid task
  validates :title, presence: true, length: { minimum: 1, maximum: 200 }
  validates :priority, inclusion: { in: %w[High Medium Low] }

  # Scopes - Pre-defined ways to filter tasks
  scope :completed, -> { where(completed: true) }
  scope :active, -> { where(completed: false) }
  scope :by_priority, ->(priority) { where(priority: priority) }
  scope :overdue, -> { where("due_date < ? AND completed = ?", Date.current, false) }

  # Helper methods
  def completed?
    completed
  end

  def overdue?
    due_date.present? && due_date < Date.current && !completed?
  end

  def priority_color
    case priority
    when "High"
      "error"     # Red in DaisyUI
    when "Medium"
      "warning"   # Yellow in DaisyUI
    when "Low"
      "success"   # Green in DaisyUI
    else
      "neutral"   # Gray in DaisyUI
    end
  end
end
