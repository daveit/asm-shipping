ActiveAdmin.register_page "Dashboard" do

  menu :priority => 10, :label => proc{ I18n.t("active_admin.dashboard") }
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    
    panel "Active Vessels" do
      #table_for Ship.order("eta_date desc").limit(5) do
      table_for Ship.where("ships.status_id='1'") do
        #<% Specimen.find(:all, :order => 'distribution_sheet_id desc', :limit => 10).each do |specimen| %>
        column "Vessel", :name do |ship|
          link_to ship.name, [:admin, ship]
        end
        column "Arrival Date", :eta_date
        column :agent
        column "Berth", :location
        column :staff
        #column :status
        column "Current", :active
        column "Added", :created_at
      end
      strong { link_to "View All Ships", admin_ships_path }
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    #columns do
    #  column do
    #    panel "Recently Added Ships" do
    #      ul do
    #        Ship.recent(5).map do |ship|
    #          li link_to(ship.name, admin_ships_path(ship))
    #        end
    #      end
    #    end
    #  end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    #end

  end # content

end # dashboard do
