ActiveAdmin.register Status do
  menu :priority => 6
  menu :label => "Status"

  # ... resource config ...
  controller do
    def permitted_params
      params.permit status: [:name]
    end
  end
  
end
