class Wish < ApplicationRecord
  validates :status, presence: true
  STATUSES = [:granted, :waiting]
end
