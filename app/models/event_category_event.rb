class EventCategoryEvent < ActiveRecord::Base
  belongs_to :event_category
  belongs_to :event
end

