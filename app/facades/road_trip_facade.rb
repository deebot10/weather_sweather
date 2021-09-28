class RoadTripFacade 
  class << self
    def find_route(location, destination)
      RoadTripService.call_db(location, destination)
    end
  end
end