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

  form do |f|
    f.inputs "Ships" do
      f.input :name, :label => "Ship Name", :input_html => { :size => 100 }
      f.input :location
      f.input :agent
      f.input :staff
      f.input :status
      f.input :active
      f.input :eta_date, :label => "ETA Date", :as => :datepicker, :input_html => { :size => 12 }
    end
    f.actions
  end
end
