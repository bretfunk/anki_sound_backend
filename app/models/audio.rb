require 'tts'
require 'aws-sdk-s3'

class Audio < ApplicationRecord
  def self.save_file(phrase, language, file_name)
    if File.file?("./public/#{language}/#{file_name}.mp3")
      upload_to_AWS(language, file_name)
    else
      "#{phrase}".to_file "#{language}", "./public/#{language}/#{file_name}.mp3"
      upload_to_AWS(language, file_name)
    end
  end

  def upload_to_AWS(language, file_name)
    #s3 = Aws::S3::Resource.new(region:'us-west-2')
    #obj = s3.bucket('bucket-name').object('key')
    #obj.upload_file('/path/to/source/file')
    s3 = Aws::S3::Resource.new(region:'us-west-2')
    obj = s3.bucket("elasticbeanstalk-us-west-2-747213477632/${language}").object("${file_name}")
    obj.upload_file('./public/#{language}/#{file_name}.mp3')
    #https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-747213477632/I_love_you.mp3
  end
end
