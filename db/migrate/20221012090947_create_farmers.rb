class CreateFarmers < ActiveRecord::Migration[7.0]
  def change
    create_table :farmers do |t|
      t.string :name
      t.integer :id_number
      t.integer :membership_number
      t.string  :image_url

      t.timestamps
    end
  end
end
