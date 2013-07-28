class Company < ActiveRecord::Base
  serialize :tags, Array
  has_paper_trail

  def tags=(data)
    super(data.to_a)
  end
end
