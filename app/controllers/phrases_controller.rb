class PhrasesController < ApplicationController
  before_action :authenticate_user, only: [:index]

  # GET /phrases
  def index
    @phrases = current_user.phrases
    render json: @phrases
  end

  # POST /phrases
  def create
    @phrase = Phrase.new(phrase_params)

    if @phrase.save
      current_user.phrases << @phrase
      render json: @phrase, status: :created, location: @phrase
    else
      render json: @phrase.errors, status: :unprocessable_entity
    end
  end

  def destroy
    phrase = params[:phrase]
    user_id = params[:user_id]
    to_delete = User.find(user_id).phrases.find_by(phrase: phrase)
    to_delete.destroy
  end

  private

  # Only allow a trusted parameter "white list" through.
  def phrase_params
    params.permit(:phrase, :language, :user_id)
  end
end
