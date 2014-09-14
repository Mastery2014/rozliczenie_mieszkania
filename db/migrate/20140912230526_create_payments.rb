class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :date
      t.float :amount
      t.integer :client_id
      

      t.timestamps
    end
  end
end
