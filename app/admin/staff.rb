ActiveAdmin.register Staff do
  
  menu :priority => 5
  menu :label => "Staff"

  # ... resource config ...
  controller do
    def permitted_params
      params.permit staff: [:initials, :name]
    end
  end
  
end
