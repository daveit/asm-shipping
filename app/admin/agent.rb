ActiveAdmin.register Agent do
  menu :priority => 3
  # ... resource config ...
  controller do
    def permitted_params
      params.permit agent: [:name, :location, :contact, :phone, :email, :comments]
    end
  end
  
end
