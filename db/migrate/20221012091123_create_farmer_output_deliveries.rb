class CreateFarmerOutputDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :farmer_output_deliveries do |t|
      t.date :date
      t.integer :cherry_kgs_delivered
      t.integer :farmer_id

      t.timestamps
    end
  end
end
