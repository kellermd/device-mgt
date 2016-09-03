class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :code
      t.string :name

      t.timestamps
      t.integer :lock_version, :null => false, :default => 0
    end
  end
end
