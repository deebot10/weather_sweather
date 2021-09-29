class RoadTripInfo
    attr_reader :start_city, 
                :end_city,
                :travel_time,
                :weather_at_eta
   
  def initialize(info)
    @start_city     = info[:start_city]
    @end_city       = info[:end_city]
    @travel_time    = info[:travel_time]
    @weather_at_eta = info[:weather_at_eta]
  end
end