json.array!(@projects) do |project|
  json.extract! project, :id, :name, :creator, :description, :image, :deadline, :goal, :user_id
  json.url project_url(project, format: :json)
end
