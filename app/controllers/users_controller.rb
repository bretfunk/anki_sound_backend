class UsersController < ApplicationController
  before_action :authenticate_user, only: [:index]

  # GET /user
  def index
    @user = current_user
    render json: @user
  end

  private

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:email, :password_digest, :admin)
  end
end
