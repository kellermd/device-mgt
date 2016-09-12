module Api
  module V1
    class LocationResource < JSONAPI::Resource
      attribute :code
      attribute :name
      
      has_one :account
      has_many :machine_account_locations
    end
  end
end
