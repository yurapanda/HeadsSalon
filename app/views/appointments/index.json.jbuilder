json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :name, :start_time
  json.url appointment_url(appointment, format: :json)
end
