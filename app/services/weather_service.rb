class WeatherService
  class << self
    def call_db(location)
      response = conn.get("/data/2.5/onecall") do |r|
        r.params['lat']    = location[:lat]
        r.params['lon']    = location[:lng]
        r.params['appid']  = ENV['weather_api']
        r.params['exclude'] = 'minutely,alerts'
      end
      parse_data(response)  
    end

    private

    def conn
      Faraday.new("https://api.openweathermap.org")
    end

    def parse_data(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end  
end