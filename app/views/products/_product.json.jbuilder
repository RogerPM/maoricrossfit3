json.extract! product, :id, :name, :purchase_price, :sale_price, :quantity, :maximum_quantity, :gain, :provider_id, :type, :state, :created_at, :updated_at
json.url product_url(product, format: :json)
