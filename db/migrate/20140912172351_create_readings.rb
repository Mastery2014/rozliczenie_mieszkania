class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.string :date
      t.string :string
      t.string :cold_water
      t.string :float
      t.string :central_heating
      t.string :float
      t.float :hot_water
      t.string :electricity
      t.string :float

      t.timestamps
    end
  end
end
