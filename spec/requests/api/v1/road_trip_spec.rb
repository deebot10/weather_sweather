require 'rails_helper'

RSpec.describe 'RoadTrip Page', :vcr do
  describe 'Can plan a road trip for users' do
    before(:each) do
      @headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
      body = {
              "email": "whatever@example.com",
              "password": "password",
              "password_confirmation": "password"
      }
      post "/api/v1/users", headers: @headers, params: JSON.generate(body)
      @user = JSON.parse(response.body, symbolize_name: true)
    end
    
    it 'Can request the User creation' do
      body = {
              "origin": "Denver,CO",
              "destination": "Pueblo,CO",
              "api_key": @user['data']['attributes']['api_key']
             }
      post "/api/v1/road_trip", headers: @headers, params: JSON.generate(body)  
      info = JSON.parse(response.body, symbolize_names: true)
    end

    it 'Sad Path: Cannot request the User creation' do
      body = {
              "origin": "Denver,CO",
              "destination": "Pueblo,CO",
              "api_key": 'jgn983hy48thw9begh98h4539h4'
             }
      post "/api/v1/road_trip", headers: @headers, params: JSON.generate(body)  
      info = JSON.parse(response.body, symbolize_names: true)

      expect(info[:error]).to eq('Invalid API key')
    end
  end
end