class Location < ApplicationRecord
  has_many :tickets
  
  validates :name, presence: true, length: { maximum: 20 }, uniqueness: true, format: { with: /\A[a-z0-9\s]+\Z/i }

end
