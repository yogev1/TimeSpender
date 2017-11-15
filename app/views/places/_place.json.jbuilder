json.extract! place, :id, :name, :address, :phone, :kind, :current_rating, :purpose, :location, :age_range, :place_type, :latitude, :longitude, :created_at, :updated_at
json.url place_url(place, format: :json)
