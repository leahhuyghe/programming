json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :due_date
  json.url project_url(project, format: :json)
end
