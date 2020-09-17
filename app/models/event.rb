class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :event_attendees, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendees

  scope :past, -> { Event.all.select { |event| event.date < Date.today } }
  scope :upcoming, -> { Event.all.select { |event| event.date >= Date.today } }
end
