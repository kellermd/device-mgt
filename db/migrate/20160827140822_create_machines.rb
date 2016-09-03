class CreateMachines < ActiveRecord::Migration[5.0]
  def change
    create_table :machines do |t|
      t.string :code
      t.string :serial_number 
      
      t.references :machine_model, foreign_key: true

      t.timestamps
      t.integer :lock_version, :null => false, :default => 0
    end
  end
end
