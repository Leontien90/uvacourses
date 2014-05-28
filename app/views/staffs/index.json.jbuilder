json.array!(@staffs) do |staff|
  json.extract! staff, :name, :url
  json.url staff_url(staff, format: :json)
end