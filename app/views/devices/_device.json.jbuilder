json.extract! device, :id, :id_code, :name, :price, :vendor, :status, :location, :date, :created_at, :updated_at
json.url device_url(device, format: :json)
