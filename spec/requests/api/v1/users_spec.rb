require 'rails_helper'

RSpec.describe 'Users Page', :vcr do
  describe 'Create an account for users' do
    # before(:each) do
    # end
    
    it 'Can request the User creation' do
      # forecast_params = {location: "denver,co"}
      headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
      post "/api/v1/users", headers: headers #, params: forecast_params  
      user = JSON.parse(response.body, symbolize_name: true)
    end
  end
end