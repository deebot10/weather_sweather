class ForecastInfo
  attr_reader :current_weather, 
              :daily_weather,
              :hourly_weather
  # attr_reader :cw_dt,
  #             :cw_temp, 
  #             :dw_date,
  #             :dw_sunrise,
  #             :hw_time,
  #             :hw_conditions

  def initialize(current_weather, daily_weather, hourly_weather)
    @current_weather = current_weather
    @hourly_weather  = hourly_weather
    @daily_weather   = daily_weather
    # @cw_dt         = Time.at(info[:current][:dt]).strftime('%F %T %:z')
    # @cw_temp       = info[:current][:temp]
    # @dw_date       = Time.at(info[:daily][0][:dt]).strftime('%Y-%m-%d')
    # @dw_sunrise    = Time.at(info[:daily][0][:sunrise]).strftime('%F %T %:z')
    # @hw_time       = Time.at(info[:hourly][0][:dt]).strftime('%T')
    # @hw_conditions = info[:hourly][0][:weather][0][:description]
  end
end