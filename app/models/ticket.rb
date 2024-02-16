class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :tech_id, class_name: "User", foreign_key: "tech_id"
  belongs_to :status
  belongs_to :category
  belongs_to :location
  belongs_to :group

  # validates :user_id, :title, :status, :category, :location, :group, presence: true
  # validates :description, presence: true 
  
end
