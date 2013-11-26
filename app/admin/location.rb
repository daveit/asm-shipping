ActiveAdmin.register Location do
  menu :priority => 4
  # ... resource config ...
  controller do
    def permitted_params
      params.permit location: [:name]
    end
  end
end
