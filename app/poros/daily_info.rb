class DailyInfo
  attr_reader :dt, 
              :sunrise,
              :sunset,
              :max_temp,
              :min_temp,
              :conditions,
              :icon
              
  def initialize(info)
    @dt         = Time.at(info[:dt]).strftime('%Y-%m-%d') 
    @sunrise    = Time.at(info[:sunrise]).strftime('%F %T %:z')
    @sunset     = Time.at(info[:sunset]).strftime('%F %T %:z')
    @max_temp   = info[:temp][:max]
    @min_temp   = info[:temp][:min]
    @conditions = info[:weather][0][:description]
    @icon       = info[:weather][0][:icon]
  end
end