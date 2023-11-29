class Task < ApplicationRecord
  belongs_to :project
  def overdue?
     due_date > Date.today and complete = false
  end 
end
