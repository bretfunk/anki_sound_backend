class PasswordController < ApplicationController
  def show
    render json: ENV['API']
  end
end
