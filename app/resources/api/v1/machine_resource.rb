module Api
  module V1
    class MachineResource < JSONAPI::Resource
      attribute :code
      attribute :serial_number
    
      has_one :machine_model
    end
  end
end