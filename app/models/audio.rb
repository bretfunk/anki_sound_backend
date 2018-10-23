require 'tts'

class Audio < ApplicationRecord
  def self.save_file(phrase, language, file_name)
    if File.file?("./public/#{language}/#{file_name}.mp3")
      # AwsService.upload(language, file_name)
    else
      "#{phrase}".to_file "#{language}", "./public/#{language}/#{file_name}.mp3"
      # AwsService.upload(language, file_name)
    end
  end

end
