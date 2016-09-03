class CreateMachineClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :machine_classes do |t|
      t.string :name

      t.timestamps
      t.integer :lock_version, :null => false, :default => 0
    end
  end
end
