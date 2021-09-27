class BackgroundFacade
  class << self
    def find_background(topic)
     BackgroundInfo.new(BackgroundService.call_db(topic)[:results][0])
    end
  end  
end