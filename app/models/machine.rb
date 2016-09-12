class Machine < ApplicationRecord
  belongs_to :machine_model  
  has_many :machine_account_locations
  #has_many :accounts, through: :machine_account_location
  #has_many :locations, through: :machine_account_location
end
