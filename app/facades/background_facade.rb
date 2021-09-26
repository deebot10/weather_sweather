class BackgroundFacade
  class << self
    def find_background(topic)
      info = BackgroundService.call_db(topic)[:results][0]
      BackgroundInfo.new(info)
    end
  end  
end