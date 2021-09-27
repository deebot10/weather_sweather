class LibraryInfo
  attr_reader :destination, 
              :forecast,
              :total_books_found,
              :books

  def initialize(info)
    @destination       = info[:destination]
    @forecast          = info[:forecast]
    @total_books_found = info[:total_books_found]
    @books             = info[:books]
  end
end