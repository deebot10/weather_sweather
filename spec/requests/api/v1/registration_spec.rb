require 'rails_helper'

RSpec.describe 'Registration Page', :vcr do
  describe 'Create an account for users' do
    before(:each) do
      @headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
    end
    
    it 'Can request the User creation' do
      body = {
              "email": "whatever@example.com",
              "password": "password",
              "password_confirmation": "password"
      }
      post "/api/v1/users", headers: @headers, params: JSON.generate(body)  
      user = JSON.parse(response.body, symbolize_name: true)
      user = User.last
     
      email = 'whatever@example.com'
    end
  end
end