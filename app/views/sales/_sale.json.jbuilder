json.extract! sale, :id, :date, :hour, :client_id, :user_id, :subtotal, :iva, :total_effective, :total_card, :total_checks, :nota, :created_at, :updated_at
json.url sale_url(sale, format: :json)
