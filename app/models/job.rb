class Job < ApplicationRecord
  include ActionController::Serialization
  belongs_to :company
  has_many :applies
  validates_associated :company
  validates :name, length: { minimum: 2 }
  validates :place, length: { minimum: 3 }
end
