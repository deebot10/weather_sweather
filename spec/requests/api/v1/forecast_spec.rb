require 'rails_helper'

RSpec.describe 'Forecast Page', :vcr do
  describe 'Displays the weather info' do
    
    it 'Can request the Forecast by location' do
      forecast_params = {location: "denver,co"}
      headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
      get "/api/v1/forecast", headers: headers, params: forecast_params  
      forecast = JSON.parse(response.body, symbolize_name: true)
    end

    it 'Sad Path: Cannot return Forecast by location' do
      headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
      get "/api/v1/forecast", headers: headers
      forecast = JSON.parse(response.body, symbolize_name: true)

      expect(forecast['message']).to eq('unsuccessful')
      expect(forecast['error']).to eq('Unable to find location')
    end
  end
end