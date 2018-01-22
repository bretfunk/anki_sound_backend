
class AudioController < ApplicationController

  def index
    phrase = params[:phrase]
    language = params[:language]
    file_name = params[:file_name]
    Audio.save_file(phrase, language, file_name)
  end
end
