class Api::V1::UsersController < ApplicationController

  def create
    user = User.find_or_create_by(user_id: user_params[:google_id])
    user.uid = user_params[:user_uid]
    user.name = user_params[:username]
    user.email = user_params[:email]
    if user.save
      render json: UserSerializer.new(user)
    else
      render json: ErrorSerializer.missing_attributes(user.errors.full_messages), status: :bad_request
    end
  end
end