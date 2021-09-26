require 'rails_helper'

describe WeatherService, :vcr do
  context "instance methods" do
    it "can make API call to database" do
      params = {:lat=>39.738453, :lng=>-104.984853}
      query = WeatherService.call_db(params)
    
      expect(query).to be_a(Hash)
      expect(query).to have_key(:current)
      expect(query).to have_key(:hourly)
      expect(query).to have_key(:daily)
    end
  end
end