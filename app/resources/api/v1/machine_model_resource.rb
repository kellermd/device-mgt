module Api
  module V1
    class MachineModelResource < JSONAPI::Resource
      attribute :code
      attribute :name
      
      #has_one :machine_class
    end
  end
end
