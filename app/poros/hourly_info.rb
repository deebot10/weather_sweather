class HourlyInfo
  attr_reader :dt, 
              :temp,
              :conditions,
              :icon

  def initialize(info)
    @dt         = Time.at(info[:dt]).strftime('%T')
    @temp       = info[:temp]
    @conditions = info[:weather][0][:description]
    @icon       = info[:weather][0][:icon]
  end
end