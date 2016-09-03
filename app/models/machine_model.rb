class MachineModel < ApplicationRecord
  belongs_to :machine_manufacturer
  belongs_to :machine_class
end
