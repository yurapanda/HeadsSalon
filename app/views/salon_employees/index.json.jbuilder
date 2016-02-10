json.array!(@salon_employees) do |salon_employee|
  json.extract! salon_employee, :id, :name, :description
  json.url salon_employee_url(salon_employee, format: :json)
end
