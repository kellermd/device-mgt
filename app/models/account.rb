class Account < ApplicationRecord
  has_many :locations
  has_many :machine_account_locations
end
