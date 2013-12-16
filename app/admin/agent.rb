ActiveAdmin.register Agent do

  menu :label => "Agents"
  #menu :priority => 40
  menu :parent => "Utility"
  # ... resource config ...
  controller do
    def permitted_params
      params.permit agent: [:name, :location, :contact, :phone, :email, :comments]
    end
  end
  
end
