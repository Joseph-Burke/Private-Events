class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id

  # Link to the through table. E.g, has many event_attendees
  
  has_many :event_attendees, foreign_key: :attendee_id
  has_many :attended_events, through: :event_attendees


end