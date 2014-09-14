class CreateOlbigations < ActiveRecord::Migration
  def change
    create_table :olbigations do |t|
      t.string :date
      t.text :description
      t.integer :client_id
      t.float :cold_water
      t.float :cold_water_price
      t.float :cental_heating
      t.float :central_heating_price
      t.float :hot_water
      t.float :hot_water_price
      t.float :electricity
      t.float :electricity_price
      t.float :other_price

      t.timestamps
    end
  end
end
