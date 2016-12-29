json.array!(@text_blocks) do |text_block|
  json.extract! text_block, :id, :name, :body
  json.url text_block_url(text_block, format: :json)
end
