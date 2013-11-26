ActiveAdmin.register Ship do
  
  menu :priority => 2
  # ... resource config ...
  controller do
    def permitted_params
      params.permit ship: [:name, :eta_date, :active, :agent_id, :location_id, :staff_id, :status_id]
    end
  end
  
  index do
    column :name
    column :location
    column :agent
    column :staff
    column :status
    column :active
    column :eta_date
    
    default_actions
  end

end
