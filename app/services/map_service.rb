class MapService
  class << self
    def call_db(location)
      response = conn.get("/geocoding/v1/address") do |r|
        r.params['location'] = location
        r.params['key']      = ENV['map_api']
      end
      parse_data(response)  
    end

    def find_route(location, destination)
      response = conn.get("/directions/v2/route") do |r|
        r.params['key']  = ENV['map_api']
        r.params['from'] = location
        r.params['to']   = destination
      end
      parse_data(response)
    end

    private

    def conn
      Faraday.new("http://www.mapquestapi.com")
    end

    def parse_data(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end
end