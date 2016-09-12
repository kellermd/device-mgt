class MachineAccountLocation < ApplicationRecord
  #attribute :begin_date_time
  #attribute :end_date_time

  belongs_to :machine
  belongs_to :account
  belongs_to :location
end
