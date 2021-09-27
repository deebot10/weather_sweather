require 'rails_helper'

RSpec.describe 'Library Page', :vcr do
  describe 'Displays the book info' do
    # before(:each) do
    # end
    
    it 'Can request the Books by location' do
      params = {location: "denver,co", quantity: 5}
      headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
      get "/api/v1/book-search", headers: headers, params: params  
      forecast = JSON.parse(response.body, symbolize_name: true)
    end
  end
end