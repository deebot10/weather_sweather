class Api::V1::BackgroundsController < ApplicationController
  def index
    # require 'pry'; binding.pry
    if params[:topics]
      # render json:  BackgroundSerializer.new(
        BackgroundFacade.find_background(params[:topics])#)
    else
      render json: { message: 'unsuccessful', error: 'Unable to find location' },
      status: :not_found
    end
  end
end