class Thermostat < ApplicationRecord

  has_many :readings, dependent: :destroy

  before_create :set_household_token

  validates :location, presence: true
  validates :household_token, uniqueness: true

  protected

  def set_household_token
    return unless attributes['household_token'].blank?
    self.household_token = loop do
      random_token = SecureRandom.hex
      break random_token unless self.class.exists?(household_token: random_token)
    end
  end
end
