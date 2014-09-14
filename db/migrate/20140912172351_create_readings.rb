class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.date :read_at
      t.float :cold_water
      t.float :central_heating
      t.float :hot_water
      t.float :electricity
     

      t.timestamps
    end
  end
end
