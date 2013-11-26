class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.date :eta_date
      t.boolean :active
      t.references :location, index: true
      t.references :agent, index: true
      t.references :status, index: true
      t.references :staff, index: true

      t.timestamps
    end
  end
end
