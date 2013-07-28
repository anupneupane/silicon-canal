require 'digest/md5'
class Person < ActiveRecord::Base
  serialize :skills, Array

  has_paper_trail


  def skills=(data)
    super(data.to_a)
  end

end
