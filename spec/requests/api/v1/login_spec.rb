require 'rails_helper'

RSpec.describe 'Login Page', :vcr do
  describe 'Create an account for users' do
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
              "email": "whatever@example.com",
              "password": "password"
             }
      post "/api/v1/sessions", headers: @headers, params: JSON.generate(body)  
      re_user = JSON.parse(response.body, symbolize_names: true)

      expect(re_user[:data][:attributes][:email]).to eq('whatever@example.com')
      expect(re_user[:data][:attributes][:api_key]).to eq(@user['data']['attributes']['api_key'])
    end
  end
end