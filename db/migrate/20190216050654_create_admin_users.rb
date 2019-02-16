class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_users do |t|
      t.string :name
      t.string :auth_token
      t.string :password_digest

      t.timestamps
    end
    add_index :admin_users, :auth_token, unique: true
  end
end
