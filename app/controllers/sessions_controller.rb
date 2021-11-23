class SessionsController < ApplicationController
  def show
    render json: @user
  end
end
