class Company < ActiveRecord::Base
  serialize :tags, Array
end
