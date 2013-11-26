json.array!(@staffs) do |staff|
  json.extract! staff, :initials, :name
  json.url staff_url(staff, format: :json)
end
