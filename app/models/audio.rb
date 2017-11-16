require 'tts'

class Audio < ApplicationRecord
  def self.save_file(phrase, language, file_name)
    "#{phrase}".to_file "#{language}", "./public/#{file_name}"
    #"Light rain with highs of 5 degrees".to_file "en", "./public/weather.mp3"
  end
end
