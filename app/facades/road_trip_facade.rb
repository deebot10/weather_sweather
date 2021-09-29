class RoadTripFacade 
  class << self
    def find_route(location, destination)
      weather = ForecastFacade.find_forecast(destination)
      route = MapService.find_route(location, destination)

      info = {
      start_city: location, 
      end_city: destination,  
      travel_time: route[:route][:formattedTime],
      weather_at_eta: {
                       temperature: weather.current_weather.temp,
                       conditions:  weather.current_weather.conditions
                      }
      }
      RoadTripInfo.new(info)
    end
  end
end