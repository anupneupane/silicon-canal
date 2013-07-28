class Company < ActiveRecord::Base
  serialize :tags, Array
  has_paper_trail

  def tags=(data)
    super(data.to_a)
  end

  class << self 
    def search(criteria: nil, tag: nil)
      results = self.all
      results = results.where("name like ?", "#{criteria}%") if criteria
      results = results.where("tags LIKE ?", "%#{tag}%") if tag
      results
    end
  end
end
