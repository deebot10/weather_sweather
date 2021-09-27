class Api::V1::BookSearchController < ApplicationController
  def index
    if params[:location] && params[:quantity]
      LibraryFacade.find_books(params[:location], params[:quantity])  
    end
  end
end