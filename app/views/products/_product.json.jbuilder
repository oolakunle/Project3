json.extract! product, :id, :title, :description, :image, :suburb, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
