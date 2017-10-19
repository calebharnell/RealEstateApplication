json.extract! house, :id, :user_id, :description, :property_type, :bedrooms, :bathrooms, :parking, :address, :city, :state, :postcode, :country, :created_at, :updated_at
json.url house_url(house, format: :json)
