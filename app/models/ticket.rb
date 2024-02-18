class Ticket < ApplicationRecord
  belongs_to :user, optional: true
  # belongs_to :tech_id, class_name: "User", foreign_key: "tech_id"

  belongs_to :status
  belongs_to :category
  belongs_to :location
  belongs_to :group

  # validates :user_id, :title, :status, :category, :location, :group, presence: true
  # validates :description, presence: true 
  def claim_by(user)
    if user.is_tech? 
      self.user = user
    self.save
        
    else
      errors.add(:user, "You must be a tech to claim a ticket")   
      false       
    end
  end

end
