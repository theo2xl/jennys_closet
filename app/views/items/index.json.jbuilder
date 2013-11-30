json.array!(@items) do |item|
  json.extract! item, :size, :color, :tag, :image
  json.url item_url(item, format: :json)
end
