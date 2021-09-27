require 'rails_helper'

describe LibraryService, :vcr do
  context "instance methods" do
    it "can make API call to database" do
      params = {location: "denver,co", quantity: 5}
      query = LibraryService.call_db(params[:location], params[:quantity])
    
      expect(query).to be_a(Hash)
      expect(query[:numFound].class).to eq(Integer)
      expect(query).to have_key(:docs)
      expect(query[:docs].class).to eq(Array)
    end
  end
end