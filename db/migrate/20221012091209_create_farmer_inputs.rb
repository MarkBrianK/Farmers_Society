class CreateFarmerInputs < ActiveRecord::Migration[7.0]
  def change
    create_table :farmer_inputs do |t|
      t.string :name
      t.string :description
      t.string :expirydate

      t.timestamps
    end
  end
end
