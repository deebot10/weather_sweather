class LibraryService
  class << self
    def call_db(location, quantity)
      response = conn.get("/search.json") do |r|
        r.params['q']     = location
        r.params['limit'] = quantity
      end
      parse_data(response)
    end

    private

    def conn
      Faraday.new("http://openlibrary.org")
    end

    def parse_data(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end
end