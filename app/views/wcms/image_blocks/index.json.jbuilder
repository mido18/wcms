json.array!(@image_blocks) do |image_block|
  json.extract! image_block, :id, :name
  json.url image_block_url(image_block, format: :json)
end
