class Reading < ApplicationRecord
  belongs_to :thermostat

  validates :thermostat_id, presence: true
  validates :tracking_number, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
  validates :temperature, :humidity, :battery_charge, presence: true, numericality: true

end
