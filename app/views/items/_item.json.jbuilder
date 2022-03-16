json.extract! item, :id, :name, :DOC, :version, :price, :available, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
