require 'rails_helper'

RSpec.describe ForecastInfo do
  xit 'exists' do
    # represents the info on the right of the = sign
    current_weather = 
            

    weather = ForecastInfo.new(attrs)
    expect(weather.class).to eq(ForecastInfo)
    expect(weather.destination).to eq('denver,co')
    expect(weather.books[0][:isbn].class).to eq(Array)
    expect(weather.books.count).to eq(5)
  end
end