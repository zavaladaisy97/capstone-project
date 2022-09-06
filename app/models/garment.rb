class Garment < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  belongs_to :color
  belongs_to :category
end 