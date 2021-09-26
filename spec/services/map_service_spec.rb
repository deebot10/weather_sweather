require 'rails_helper'

describe MapService, :vcr do
  context "instance methods" do
    it "can make API call to database" do
      params = 'denver,co'
      query = MapService.call_db(params)
      map_data = query[:results][0][:locations][0][:latLng]
    
      expect(query).to be_a Hash
      expect(map_data).to be_a Hash
      expect(map_data).to have_key(:lat)
      expect(map_data).to have_key(:lng)
    end
  end
end