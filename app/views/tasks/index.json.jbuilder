json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :due, :strict, :duration, :scheduled, :complete
  json.url task_url(task, format: :json)
end
