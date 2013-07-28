require 'digest/md5'
class Person < ActiveRecord::Base
  serialize :skills, Array

  has_paper_trail

  def image_url
    hash = Digest::MD5.hexdigest(self.email.downcase)
    image_src = "http://www.gravatar.com/avatar/#{hash}"
  end

  def skills=(data)
    super(data.to_a)
  end

end
