class Api::V1::BackgroundsController < ApplicationController
  def index
    if params[:query]
      render json:  BackgroundSerializer.new(BackgroundFacade.find_background(params[:query]))
    else
      render json: { message: 'unsuccessful', error: 'Unable to find location' },
      status: :not_found
    end
  end
end