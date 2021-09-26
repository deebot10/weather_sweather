require 'rails_helper'

describe BackgroundService, :vcr do
  context "instance methods" do
    it "can make API call to database" do
      params =  'denver,co'
      query = BackgroundService.call_db(params)
      background_data = query[:results][0]
    
      expect(query).to be_a(Hash)
      expect(background_data).to be_a(Hash)
      expect(background_data).to have_key(:urls)
    end
  end
end