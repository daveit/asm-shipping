class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :location
      t.string :contact
      t.string :phone
      t.string :email
      t.text :comments

      t.timestamps
    end
  end
end
