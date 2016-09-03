class CreateMachineModels < ActiveRecord::Migration[5.0]
  def change
    create_table :machine_models do |t|
      t.string :code
      t.string :name
      t.references :machine_manufacturer, foreign_key: true
      t.references :machine_class, foreign_key: true

      t.timestamps
      t.integer :lock_version, :null => false, :default => 0
    end
  end
end
