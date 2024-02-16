class Group < ApplicationRecord
  has_many :tickets
  has_and_belongs_to_many :users
  
  validates :name, presence: true, length: { maximum: 20 }, uniqueness: true, format: { with: /\A[a-z0-9\s]+\Z/i }
end
