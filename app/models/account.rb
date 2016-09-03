class Account < ApplicationRecord
  has_many :machine
  has_many :location
end
