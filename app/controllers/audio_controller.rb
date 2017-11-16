#require 'tts'

class AudioController < ApplicationController

  def index
    phrase = params[:phrase]
    language = params[:language]
    Audio.save_file(phrase, language)
  end
end
