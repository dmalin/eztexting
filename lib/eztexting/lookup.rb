module Eztexting
  class Lookup < Base
    
    # Lookup the carrier for a telephone mobile numbert
    #
    #
    def self.carrier(phone_number)
      location = "/lookup"
      options  = {:phonenumber => phone_number}  
      
      response = self.do_post(location,options)
      response_result = self.process(response)
      
      return self.processed_reponse(response_result,response)
    end
    
  end
end