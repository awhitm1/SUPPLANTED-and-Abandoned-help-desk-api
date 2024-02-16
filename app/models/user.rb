class User < ApplicationRecord
  has_many :tickets
  has_many :tech_id, class_name: "Ticket", foreign_key: "tech_id"
  has_and_belongs_to_many :groups
  validates :f_name, :l_name, :email, presence: true
  validates :email, uniqueness: true
  

  
end
