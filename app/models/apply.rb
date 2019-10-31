class Apply < ApplicationRecord
  belongs_to :geek
  belongs_to :job
  validates_associated :geek
  validates_associated :job
end
