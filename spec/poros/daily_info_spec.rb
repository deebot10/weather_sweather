require 'rails_helper'

RSpec.describe DailyInfo do
  it 'exists' do
    # represents the info on the right of the = sign
    attrs = {
              :dt=>1632765600,
              :sunrise=>1632747150,
              :sunset=>1632790142,
              :moonrise=>1632804000,
              :moonset=>1632770520,
              :moon_phase=>0.71,
              :temp=>{:day=>82.33, :min=>65.84, :max=>86.54, :night=>74.08, :eve=>77.95, :morn=>66.51},
              :feels_like=>{:day=>79.86, :night=>72.23, :eve=>76.3, :morn=>63.84},
              :pressure=>1009,
              :humidity=>12,
              :dew_point=>24.85,
              :wind_speed=>14.79,
              :wind_deg=>124,
              :wind_gust=>21.5,
              :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
              :clouds=>5,
              :pop=>0,
              :uvi=>5.89
            }

    weather = DailyInfo.new(attrs)
    expect(weather.class).to eq(DailyInfo)
    expect(weather.conditions).to eq('clear sky')
    expect(weather.sunset.class).to eq(String)
    expect(weather.max_temp.class).to eq(Float)
  end
end