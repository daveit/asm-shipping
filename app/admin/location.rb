ActiveAdmin.register Location do
  #menu :priority => 50
  menu :label => "Locations"
  menu :parent => "Utility"

  # ... resource config ...
  controller do
    def permitted_params
      params.permit location: [:name]
    end
  end
end
