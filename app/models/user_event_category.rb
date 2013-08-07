class UserEventCategory < ActiveRecord::Base
  belongs_to :user
  belongs_to :event_category
end
