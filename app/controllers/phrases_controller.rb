class PhrasesController < ApplicationController
  before_action :authenticate_user, only: [:index]

  # GET /phrases
  def index
    @phrases = current_user.phrases
    render json: @phrases
  end

  private

  # Only allow a trusted parameter "white list" through.
  def phrase_params
    params.permit(:phrase, :language, :user_id)
  end
end
