class Api::V1::BookSearchController < ApplicationController
  def index
    if params[:location] && params[:quantity]
      render json: LibrarySerializer.new(LibraryFacade.find_books(params[:location], params[:quantity])) 
    else 
      render json: { message: 'unsuccessful', error: 'Unable to find location' },
      status: :not_found  
    end
  end
end