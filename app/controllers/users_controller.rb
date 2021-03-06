class UsersController < ApplicationController
  before_action :authenticate_user, only: [:index]

  # GET /user
  def index
    @user = current_user
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.permit(:email, :password, :admin)
  end
end
