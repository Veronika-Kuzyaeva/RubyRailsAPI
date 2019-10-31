class Geek < ApplicationRecord
  has_many :applies
  validates :name, length: { in: 2..50 }
  validates :stack, length: { maximum: 500 }
  validates :resume, length: { maximum: 500 }
end
