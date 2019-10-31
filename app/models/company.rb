class Company < ApplicationRecord
  has_many :jobs
  validates :name, length: { minimum: 2 }
  validates :location, length: { minimum: 3 }
end
