class CreateTaidongs < ActiveRecord::Migration
  def change
    create_table :taidongs do |t|
      t.datetime :happened_at
      t.integer :account_id
      t.string :batch_id

      t.timestamps
    end
  end
end
