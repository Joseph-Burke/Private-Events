class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"

  # Link to the through table. E.g, has many event_attendees
  has_many :event_attendees, foreign_key: :attended_event_id
  # Complete the many-to-many relationship by linking through the "through table".
  has_many :attendees, through: :event_attendees
  
   
  def Event.past
    Event.all.select { |event| event.date < Date.today }
  end
  
  def Event.upcoming
    Event.all.select { |event| event.date >= Date.today }
  end
  
end
