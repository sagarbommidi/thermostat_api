# Seeding Thermostat records
ActiveRecord::Base.transaction do
  puts "Populating Thermostat records in database"
  10.times do
    Thermostat.create!(
      location: Faker::Address.full_address
    )
  end
end
