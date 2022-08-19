class User < ApplicationRecord
  has_secure_password
  validates :name 
  validates :email, presence: true, uniqueness: true

  has_many :garments
end
