class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"
  has_many :guests, foreign_key: "guest_id" ,class_name: "User"
  
end

