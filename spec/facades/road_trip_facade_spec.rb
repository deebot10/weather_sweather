require 'rails_helper'

describe RoadTripFacade, :vcr do
  context "instance methods" do
    it "returns parks matching selections" do
      selection = RoadTripFacade.find_route('denver,co', 'pubelo,co')

      expect(selection.class).to eq(RoadTripInfo)
      expect(selection.start_city.class).to eq(String)
      expect(selection.weather_at_eta.class).to eq(Hash)
    end
  end
end