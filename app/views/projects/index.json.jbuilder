json.array!(@projects) do |project|
  json.extract! project, :id, :name, :timeframe, :blurb, :description, :repo, :demo, :image_src
  json.url project_url(project, format: :json)
end
