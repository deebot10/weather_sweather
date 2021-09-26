require 'rails_helper'

describe ForecastFacade, :vcr do
  context "instance methods" do
    it "returns forecast matching selections" do
      selection = ForecastFacade.find_forecast('denver,co')
      
      expect(selection.class).to eq(ForecastInfo)
      expect(selection.daily_weather.class).to eq(Array)
    end
  end
end