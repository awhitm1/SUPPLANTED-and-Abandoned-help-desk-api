class Ticket < ApplicationRecord
  belongs_to :user, class_name => "User", foreign_key => "user_id"
  belongs_to :tech_id, class_name => "User", foreign_key => "tech_id"
  belongs_to :status
  belongs_to :category
  belongs_to :location
  belongs_to :group
end
