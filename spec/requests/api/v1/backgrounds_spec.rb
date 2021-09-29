require 'rails_helper'

RSpec.describe 'Background Page', :vcr do
  describe 'Displays the background info' do
    
    it 'Can request the Forecast by location' do
      params = {query: "denver,co"}
      headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
      get "/api/v1/backgrounds", headers: headers, params: params  
      background = JSON.parse(response.body, symbolize_name: true)
    end

     it 'sad path: Cannot return a background' do
      # params = {query: "denver,co"}
      headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
      get "/api/v1/backgrounds", headers: headers  
      background = JSON.parse(response.body, symbolize_name: true)
     
      expect(background['message']).to eq('unsuccessful')
      expect(background['error']).to eq('Unable to find location')
    end
  end
end