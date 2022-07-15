json.extract! booking, :id, :customer_id, :journey_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
