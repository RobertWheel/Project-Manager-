class Task < ApplicationRecord
  belongs_to :project
  def overdue?
   due_date.present? && due_date < Date.today && !complete


  end 
    end
