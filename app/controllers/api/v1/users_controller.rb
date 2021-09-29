
class Api::V1::UsersController < ApplicationController
  def create
    ActiveRecord::Base.connection.reset_pk_sequence!('users')
    user = User.new(user_params)

    if user.save
      user.update(api_key: SecureRandom.hex)
      render json: UsersSerializer.new(user), status: 201
    else
      render json: { error: 'The password or email is invalid'}, status: 422  
    end    
  end 
  
  private 
    def user_params
      params.permit(:email, :password, :password_confirmation)
    end
end