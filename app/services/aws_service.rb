require 'aws-sdk-s3'

class AwsService

  def self.upload(language, file_name)
    s3 = Aws::S3::Resource.new(region:"us-west-2")
    obj = s3.bucket("elasticbeanstalk-us-west-2-747213477632").object("/#{language}/#{file_name}.mp3")
    #obj = s3.bucket("elasticbeanstalk-us-west-2-747213477632").object("/en/i_hate_you.mp3")
    #obj.upload_file("./public/en/i_hate_you.mp3")
    obj.upload_file("./public/#{language}/#{file_name}.mp3")
  end
end
