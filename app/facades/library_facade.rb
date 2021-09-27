class LibraryFacade
  class << self
    def find_books(location, quantity)
      info = ForecastFacade.find_forecast(location)
      current_weather = info.current_weather
      books = LibraryService.call_db(location, quantity)  
      city_books = format_books(books)
    end  
    
    def self.format_books(books)
      books.map do |book|
        require 'pry'; binding.pry
        {
        }  
      end    
    end

    def self.format_details
      
    end
  end
end