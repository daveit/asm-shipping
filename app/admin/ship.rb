ActiveAdmin.register Ship do
  
  menu :priority => 1
  menu :label => "Vessels"

  # ... resource config ...
  controller do
    def permitted_params
      params.permit ship: [:name, :eta_date, :active, :agent_id, :location_id, :staff_id, :status_id]
    end
  end
  
  index do
    column "Vessel", :name
    column "Berth", :location
    column :agent
    column "ETA Date", :eta_date
    column :staff
    column :status
    column :active

    default_actions
  end

  form do |f|
    f.inputs "Ships" do
      f.input :name, :label => "Vessel", :input_html => { :size => 100 }
      f.input :location, :label => "Berth"
      f.input :agent
      f.input :eta_date, :label => "ETA Date", :as => :datepicker, :input_html => { :size => 12 }
      f.input :staff
      f.input :status
      f.input :active
    end
    f.actions
  end
end
