require 'rails_helper'

RSpec.describe ForecastInfo do
  it 'exists' do
    current_weather = {
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
    
    daily_weather = {
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

    hourly_weather = {
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
    current_weather = CurrentInfo.new(current_weather)
    daily_weather = DailyInfo.new(daily_weather)
    hourly_weather = HourlyInfo.new(hourly_weather)                   

    weather = ForecastInfo.new(current_weather, daily_weather, hourly_weather)
 
    expect(weather.class).to eq(ForecastInfo)
    expect(weather.current_weather.class).to eq(CurrentInfo)
    expect(weather.daily_weather.class).to eq(DailyInfo)
    expect(weather.hourly_weather.class).to eq(HourlyInfo)
  end
end