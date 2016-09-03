class CreateMachineAccountLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :machine_account_locations do |t|

      t.references :machine, foreign_key: true, null:false
      t.references :account, foreign_key: true, null:true
      t.references :location, foreign_key: true, null:true
      t.datetime :begin_date_time, null: false
      t.datetime :end_date_time, null: true
      
      t.timestamps
      t.integer :lock_version, :null => false, :default => 0
    end
  end
end
