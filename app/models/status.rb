class Status < ApplicationRecord
  has_many :tickets
  
  validates :name, presence: true, length: { maximum: 20 }, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/ }
end
