json.array!(@documents) do |document|
  json.extract! document, :id, :name, :attachment
  json.url document_url(document, format: :json)
end
