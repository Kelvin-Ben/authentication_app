class RegistrationsController < ApplicationController
  def create
    user = User.create!(
      email: params["user"]["email"]
      password: params["user"]["password"]
      password_confirmation: params["user"]["password_Confirmation"]
    )

    if user
      session[:user_id] = user_id
      render json: {
        status: :created
        user: user
      }
    else
      render json: {
        status: 501
      }
  end
end