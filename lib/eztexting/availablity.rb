module Eztexting
  class Availability < Base
    
    def self.check(keyword)
      location = "/keyword/check/"
      options  = {:keyword => keyword}
      
      response = self.do_post(location,options)
      response_result = self.process(response)
      
      return self.processed_reponse(response_result,response)
    end
    
    def self.process(response)
      api_result = case response
      when "1"
        "The keyword is available"
      when "0"
        "The keyword is no available"
      when "-1" 
        "Invalid user and/or password or API is not allowed for your account"
      when "-10"
        "error"
      else
        "error"
      end
    end
    
  end
end