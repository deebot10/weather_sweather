class Api::V1::UsersController < ApplicationController
  def create
    ActiveRecord::Base.connection.reset_pk_sequence!('users')
    user = User.new(user_params)
    if user.save
      render json: UsersSerializer.new(user), status: 201
    end    
  end  
end