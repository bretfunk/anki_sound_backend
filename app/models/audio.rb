require 'tts'

class Audio < ApplicationRecord
  def self.save_file(phrase, language, file_name)
    "#{phrase}".to_file "#{language}", "./public/#{language}/#{file_name}.mp3"
  end
end
