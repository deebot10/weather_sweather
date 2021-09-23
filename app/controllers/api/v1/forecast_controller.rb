class Api::V1::ForecastController < ApplicationController
  def index
    if params[:location]
      render json:  ForecastSerializer.new(ForecastFacade.find_forecast(params[:location]))
    else
      render json: { message: 'unsuccessful', error: 'Unable to find location' },
      status: :not_found
    end
  end  
end