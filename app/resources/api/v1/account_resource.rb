module Api
  module V1
    class  AccountResource < JSONAPI::Resource
      
      attribute :code
      attribute :name
      
      has_many :locations
      has_many :machine_account_locations
    end
  end
end
