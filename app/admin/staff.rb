ActiveAdmin.register Staff do
  
  #menu :priority => 60
  menu :label => "Staff"
  menu :parent => "Utility"

  # ... resource config ...
  controller do
    def permitted_params
      params.permit staff: [:initials, :name]
    end
  end
  
end
