require 'rails_helper'

RSpec.describe 'Forecast Page', :vcr do
  describe 'Displays the weather info' do
    before(:each) do
    end

    it 'Can request the Forecast by location' do
      forecast_params = {location: "denver,co"}
      headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
      get "/api/v1/forecast", headers: headers, params: forecast_params  
      forecast = JSON.parse(response.body, symbolize_name: true)
    end
  end
end