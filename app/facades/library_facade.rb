class LibraryFacade
  class << self
    def find_books(location, quantity)
      info = ForecastFacade.find_forecast(location)
      current_weather = info.current_weather
      books = LibraryService.call_db(location, quantity)  
      city_books = format_books(books[:docs])
      format = format_return(location, city_books, books, current_weather) 
      LibraryInfo(format)
    end  
    
    def format_books(books)
      books.map do |book|
        {
          isbn: book[:isbn],
          title: book[:title],
          publisher: book[:publisher]
        }  
      end    
    end

    def format_return(location, city_books, books, current_weather)
      {
        destination: location, 
        forecast: { summary: current_weather.conditions, 
                    tempature: "#{current_weather.temp} F" 
        },
        total_books_found: books[:numFound],
        books: city_books
      }  
    end
  end
end