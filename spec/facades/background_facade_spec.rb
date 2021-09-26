require 'rails_helper'

describe BackgroundFacade do
  context "instance methods", :vcr do
    it "returns background matching selections" do
      selection = BackgroundFacade.find_background('denver,co')

      expect(selection.class).to eq(BackgroundInfo)
      expect(selection.artist_info.class).to eq(String)
    end
  end
end