class Company < ActiveRecord::Base
  serialize :tags, Array

  def tags=(data)
    data = data.split(',') if data.is_a?(String)
    super(data)
  end
end
