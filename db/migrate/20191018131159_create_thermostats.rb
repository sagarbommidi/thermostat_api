class CreateThermostats < ActiveRecord::Migration[5.2]
  def change
    create_table :thermostats do |t|
      t.text :household_token, null: false
      t.text :location, null: false

      t.timestamps
    end
    add_index :thermostats, :household_token, unique: true
  end
end
