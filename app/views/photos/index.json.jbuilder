json.array!(@photos) do |photo|
  json.extract! photo, :id, :attachment, :description
  json.url photo_url(photo, format: :json)
end
