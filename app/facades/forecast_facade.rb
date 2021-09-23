class ForecastFacade 
  class << self
    def find_forecast(location)
      info = WeatherService.call_db(MapService.call_db(location)[:results][0][:locations][0][:latLng])  
      ForecastInfo.new(current_weather(info), daily_weather(info), hourly_weather(info)) 
    end

    def current_weather(info)
      CurrentInfo.new(info[:current])
    end

    def daily_weather(info)
      info[:daily][0..4].map {|day| DailyInfo.new(day)}
    end

    def hourly_weather(info)
      info[:hourly][0..7].map {|hour| HourlyInfo.new(hour)}        
    end
  end
end