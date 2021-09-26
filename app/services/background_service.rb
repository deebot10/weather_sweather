class BackgroundService
  class << self
    def call_db(query)
      response = conn.get("search/photos") do |r|
        r.params['query']     = query   
        r.params['client_id'] = ENV['client_id']
        r.params['per_page']  = 1
      end  
      parse_data(response)
    end

    private

    def conn
      Faraday.new("https://api.unsplash.com")
    end

    def parse_data(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end  
end