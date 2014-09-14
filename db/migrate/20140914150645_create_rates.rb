class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.date :valid_from
      t.float :cold_water
      t.float :central_heating
      t.float :hot_water
      t.float :electricity

      t.timestamps
    end
  end
end
