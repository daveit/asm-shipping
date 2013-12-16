class CreateVessels < ActiveRecord::Migration
  def change
    create_table :vessels do |t|
      t.string :name
      t.string :lloyds
      t.string :inmc
      t.string :phone
      t.string :fax
      t.string :email
      t.string :extra

      t.timestamps
    end
  end
end
