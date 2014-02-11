class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.datetime :last_sync_at

      t.timestamps
    end
  end
end
