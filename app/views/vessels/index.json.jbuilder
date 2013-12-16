json.array!(@vessels) do |vessel|
  json.extract! vessel, :name, :lloyds, :inmc, :phone, :fax, :email, :extra
  json.url vessel_url(vessel, format: :json)
end
