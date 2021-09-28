require 'rails_helper'

RSpec.describe HourlyInfo do
  it 'exists' do
    # represents the info on the right of the = sign
    attrs =  {
              :dt=>1632790800,
              :temp=>75.52,
              :feels_like=>73.76,
              :pressure=>1007,
              :humidity=>21,
              :dew_point=>32.9,
              :uvi=>0,
              :clouds=>65,
              :visibility=>10000,
              :wind_speed=>12.1,
              :wind_deg=>135,
              :wind_gust=>18.92,
              :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04n"}],
              :pop=>0
            }


    weather = HourlyInfo.new(attrs)
    
    expect(weather.class).to eq(HourlyInfo)
    expect(weather.conditions).to eq('broken clouds')
    expect(weather.temp.class).to eq(Float)
    expect(weather.dt.class).to eq(String)
  end
end