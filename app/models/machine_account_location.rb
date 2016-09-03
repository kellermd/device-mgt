class MachineAccountLocation < ApplicationRecord
  belongs_to :machine
  belongs_to :account
  belongs_to :location
end
