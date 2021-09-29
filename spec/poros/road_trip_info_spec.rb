require 'rails_helper'

RSpec.describe RoadTripInfo do
  it 'exists' do
    # represents the info on the right of the = sign
    attrs = {
              :start_city=>"Denver,CO",
              :end_city=>"Pueblo,CO",
              :travel_time=>"01:44:22",
              :weather_at_eta=>{:temperature=>69.58, :conditions=>"clear sky"}
            }

    data = RoadTripInfo.new(attrs)
    expect(data.class).to eq(RoadTripInfo)
    expect(data.start_city).to eq('Denver,CO')
    expect(data.weather_at_eta.class).to eq(Hash)
  end
end