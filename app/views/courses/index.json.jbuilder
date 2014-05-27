json.array!(@courses) do |course|
  json.extract! course, :name, :ects, :year, :period, :institute, :description, :goals, :participation_count, :examination
  json.url course_url(course, format: :json)
end