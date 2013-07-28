require 'digest/md5'
class Person < ActiveRecord::Base
  serialize :skills, Array

  has_paper_trail

  def skills=(data)
    super(data.to_a)
  end

  class << self
    def search(criteria: nil, skill: nil)
      results = self.all
      results = results.where("name like ?", "#{criteria}%") if criteria
      results = results.where("skills LIKE ?", "%#{skill}%") if skill
      results
    end
  end
end
