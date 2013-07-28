class PersonDecorator < Draper::Decorator
  delegate_all

  def image_url
    hash = Digest::MD5.hexdigest(object.email.downcase)
    image_src = "http://www.gravatar.com/avatar/#{hash}"
  end

end
