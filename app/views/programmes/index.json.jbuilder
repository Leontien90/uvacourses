json.array!(@programmes) do |programme|
  json.extract! programme, :name, :url
  json.url programme_url(programme, format: :json)
end