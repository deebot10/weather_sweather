class Api::V1::RoadTripController < ApplicationController
  def create
    user = User.find_by(api_key: params[:api_key])
    if user
      trip = RoadTripFacade.find_route(params[:origin], params[:destination])
      render json: RoadTripSerializer.new(trip), status: 200
    else
      render json: { error: 'Invalid API key' }, status: 404
    end
  end  
end