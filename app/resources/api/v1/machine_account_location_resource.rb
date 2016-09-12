module Api
  module V1
    class MachineAccountLocationResource < JSONAPI::Resource
      attribute :begin_date_time
      attribute :end_date_time
    
      has_one :machine
      has_one :account
      has_one :location
    end
  end
end
