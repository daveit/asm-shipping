ActiveAdmin.register Vessel do

  #menu :priority => 12
  menu :label => "Archives"
  menu :parent => "Utility"

  # ... resource config ...
  controller do
    def permitted_params
      params.permit vessel: [:name, :lloyds, :inmc, :phone, :fax, :email, :extra]
    end
  end

  index do
    column "Vessel", :name
    column "Lloyds #", :lloyds
    column "INM.C", :inmc
    column :phone
    column :fax
    #column :email
    column :extra

    default_actions
  end

  form do |f|
    f.inputs "Vessels" do
      f.input :name, :label => "Vessel:", :input_html => { :size => 100 }
      f.input :lloyds, :label => "Lloyds #", :input_html => { :size => 100 }
      f.input :inmc, :label => "INM.C:", :input_html => { :size => 100 }
      f.input :phone, :label => "Phone:", :input_html => { :size => 100 }
      f.input :fax, :label => "Fax:", :input_html => { :size => 100 }
      f.input :email, :label => "E-Mail:", :input_html => { :size => 100 }
      f.input :extra, :label => "Extra:", :input_html => { :size => 100 }
    end
    f.actions
  end
end
