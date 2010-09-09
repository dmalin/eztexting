module Eztexting
  class Lookup < Base
    
    # Lookup the carrier for a telephone mobile number
    # @param [String] phone_number is the number to be passed in to check the carrier
    # @return [Array] the first element would be the carrier if the request was successful, the second  will bethe raw data
    def self.carrier(phone_number)
      location = "/lookup"
      options  = {:phonenumber => phone_number}  
      
      response = self.do_post(location,options)
      response_result = self.process(response)
      
      return self.processed_reponse(response_result,response)
    end
    
  end
end