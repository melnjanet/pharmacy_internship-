json.extract! item, :id, :price, :quantity, :created_at, :updated_at
json.url item_url(item, format: :json)
