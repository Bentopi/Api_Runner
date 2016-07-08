class Api::UsersController < ApplicationController

  protect_from_forgery with: :null_session

  before_action do
    request.format = :json
  end

  def create
    @user = User.new
    @user.username = params[:user][:username]
    @user.password = params[:user][:password]
    if @user.save
      render json: {user: @user}, status: 201
    else
      render json: {errors: @user.errors}, status: 402
    end
  end
end
