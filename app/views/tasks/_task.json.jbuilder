json.extract! task, :id, :name, :year, :month, :day, :complete, :project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
