class Event < ApplicationRecord
    has_many :event_attendings, foreign_key: "attended_events"
    has_many :attendees, through: :event_attendings
    belongs_to :creator, class_name: "User"
end
