class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.string :email
      t.date :rent_start
      t.date :rent_end

      t.timestamps
    end
  end
end
