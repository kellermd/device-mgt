class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :code
      t.string :name
      t.references :account, foreign_key: true

      t.timestamps
      t.integer :lock_version, :null => false, :default => 0
    end
  end
end
