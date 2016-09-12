class Location < ApplicationRecord
  belongs_to :account  
  has_many :machine_account_locations
  #has_many :machines, through: :machine_account_locations
end
