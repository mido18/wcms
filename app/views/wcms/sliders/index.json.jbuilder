json.array!(@sliders) do |slider|
  json.extract! slider, :id, :title, :description
  json.url slider_url(slider, format: :json)
end
