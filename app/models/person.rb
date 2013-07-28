require 'digest/md5'
class Person < ActiveRecord::Base
  serialize :skills, Array

  def image_url
    hash = Digest::MD5.hexdigest(self.email.downcase)
    image_src = "http://www.gravatar.com/avatar/#{hash}"
  end

  def skills=(data)
    data = data.split(',') if data.is_a?(String)
    super(data)
  end

end
