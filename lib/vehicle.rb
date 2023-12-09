require 'date'

class Vehicle
  attr_reader 
  
attr_accessor :registration_date,
              :vin, 
              :year,
              :make,
              :model,
              :engine,
              :plate_type

  def initialize(vehicle_details)
    @vin = vehicle_details[:vin]
    @year = vehicle_details[:year]
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
    @registration_date = nil
    @plate_type = nil
  end

  def antique?
    Date.today.year - @year > 25
  end

  def electric_vehicle?
    @engine == :ev
  end
end


# First error: The test was expecting a registration_date method, but there was not method created in the Vehicle class. the return value needed to be nil so I called registration date detail from the vehicle objects. The value equals nil since registration date key doesn't exit in vehicle details hash.

#hash with plate type as key and registration cost as value