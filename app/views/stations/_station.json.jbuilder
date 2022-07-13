json.extract! station, :id, :name, :town, :lat, :long, :created_at, :updated_at
json.url station_url(station, format: :json)
