class Machine < ApplicationRecord
  belongs_to :machine_model
  belongs_to :account
  belongs_to :location
end
