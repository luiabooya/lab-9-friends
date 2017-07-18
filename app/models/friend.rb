class Friend < ApplicationRecord

  validates :name, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10}|\(?\d{3}\)?[-\. ]?\d{3}[-\. ]?\d{4}\z/,
    message: "Please input a valid phone number; only space, dash, period, and parentheses allowed"}
  validates :email, presence: true, format: { with: /\A([\w\.]+)@[a-zA-Z0-9\.]+\.[a-zA-Z]{2,4}\z/,
    message: "Please input a valid email" }
  validates :level, presence: true, inclusion: { in: [1,2,3,4], message: "Please select a level from 1-4" }
  
  FRIENDSHIP_LEVELS = [ ["Casual", 1], ["Good", 2], ["Close", 3], ["Best", 4] ]
  
  mount_uploader :photo, PhotoUploader
  
end
