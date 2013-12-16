ActiveAdmin.register Status do
  ##menu :priority => 70
  ##menu :label => "Status"
  #menu false
  menu :parent => "Utility"

  # ... resource config ...
  controller do
    def permitted_params
      params.permit status: [:name]
    end
  end
  
end
