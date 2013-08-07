class Event < ActiveRecord::Base
  has_paper_trail
  has_many :event_category_events
  has_many :categories, through: :event_category_events, source: :event_category
end
