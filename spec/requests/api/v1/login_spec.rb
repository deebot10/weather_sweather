require 'rails_helper'

RSpec.describe 'Login Page', :vcr do
  describe 'Create an account for users' do
    before(:each) do
      @headers = {"CONTENT_TYPE": "application/json", "ACCEPT": "application/json"}
    end
    
    it 'Can request the User creation' do
      body = {
              "email": "whatever@example.com",
              "password": "password",
      }
      post "/api/v1/sessions", headers: @headers, params: JSON.generate(body)  
      user = JSON.parse(response.body, symbolize_name: true)
      reg_user = User.find(user[:id].to_i)
    end
  end
end