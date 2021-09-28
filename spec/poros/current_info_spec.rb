require 'rails_helper'

RSpec.describe CurrentInfo do
  it 'exists' do
    attrs = {
              :dt=>1632791586,
              :sunrise=>1632747150,
              :sunset=>1632790142,
              :temp=>77.05,
              :feels_like=>75.4,
              :pressure=>1007,
              :humidity=>20,
              :dew_point=>32.95,
              :uvi=>0,
              :clouds=>65,
              :visibility=>10000,
              :wind_speed=>1.01,
              :wind_deg=>121,
              :wind_gust=>1.99,
              :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04n"}]
            }

    weather = CurrentInfo.new(attrs)
    expect(weather.class).to eq(CurrentInfo)
    expect(weather.conditions).to eq('broken clouds')
    expect(weather.sunrise.class).to eq(String)
  end
end