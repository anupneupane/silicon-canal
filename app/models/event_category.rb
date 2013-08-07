class EventCategory < ActiveRecord::Base
  has_many :user_event_categories
  has_many :users, through: :user_event_categories
end
