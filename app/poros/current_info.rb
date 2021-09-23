class CurrentInfo
  attr_reader :dt,
              :sunrise,
              :sunset,
              :temp,
              :feels_like,
              :humidty,
              :uvi,
              :visibility,
              :conditions, 
              :icon

  def initialize(info)
    @dt         = Time.at(info[:dt]).strftime('%F %T %:z')
    @sunrise    = Time.at(info[:sunrise]).strftime('%F %T %:z')
    @sunset     = Time.at(info[:sunset]).strftime('%F %T %:z')
    @temp       = info[:temp] 
    @fl         = info[:feels_like]
    @humidty    = info[:humidty]
    @uvi        = info[:uvi]
    @visibility = info[:visibility]
    @conditions = info[:weather][0][:description]
    @icon       = info[:weather][0][:icon]   
  end
end