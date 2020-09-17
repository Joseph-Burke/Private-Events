class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id
  has_many :event_attendees , foreign_key: :attendee_id
  has_many :events , through: :event_attendees
end

#  foreign_key: "event_id"