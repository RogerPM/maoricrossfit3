json.extract! product_quantity, :id, :product_id, :quantity, :subtotal, :sale_id, :created_at, :updated_at
json.url product_quantity_url(product_quantity, format: :json)
