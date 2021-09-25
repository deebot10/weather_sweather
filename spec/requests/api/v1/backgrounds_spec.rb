require 'rails_helper'

RSpec.describe 'Background Page', :vcr do
  describe 'Displays the background info' do
    # before(:each) do
    # end
    
    it 'Can request the Forecast by location' do
      params = {topics: "denver,co"}
      headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
      get "/api/v1/backgrounds", headers: headers, params: params  
      background = JSON.parse(response.body, symbolize_name: true)
    end
  end
end