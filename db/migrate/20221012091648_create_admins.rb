class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :username
      t.text :email
      t.integer :password_digest
      t.integer :user_id

      t.timestamps
    end
  end
end
