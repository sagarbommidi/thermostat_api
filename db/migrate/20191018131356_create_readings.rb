class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.integer :tracking_number
      t.float :temperature
      t.float :humidity
      t.float :battery_charge
      t.references :thermostat, index: true

      t.timestamps
    end
    add_index :readings, [:thermostat_id, :tracking_number], unique: true

  end
end
