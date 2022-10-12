class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :farm_input_id
      t.date :date_booked
      t.string :quantity

      t.timestamps
    end
  end
end
