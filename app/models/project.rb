class Project < ApplicationRecord

has_many :tasks


def completion_percentage
    total_tasks = tasks.count
    return 0 if total_tasks.zero?

    completed_tasks = tasks.where(complete: true).count
   (completed_tasks.to_f / total_tasks * 100).to_i
 end

def overdue_tasks_count
   tasks.where("due_date < ? AND complete = ?", Date.today, false).count
end

end
