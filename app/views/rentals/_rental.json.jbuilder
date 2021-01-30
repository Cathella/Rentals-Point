json.extract! rental, :id, :name, :location, :price, :created_at, :updated_at
json.url rental_url(rental, format: :json)
