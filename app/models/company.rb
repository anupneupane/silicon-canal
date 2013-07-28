class Company < ActiveRecord::Base
  serialize :tags, Array
  has_paper_trail

  def tags=(data)
    super(data.to_a)
  end

  class << self 
    def search(criteria)
      where("name like ?", "#{criteria}%")
    end
  end
end
