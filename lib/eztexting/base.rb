module Eztexting
  class Base
    
    def self.do_post(uri,options)
      options  = options || {}
      options  = options.merge!(Eztexting.credentials)
      location = uri
      
      response = Eztexting.post(location, :body => options)
      return response.body
    end
    
    def self.process(response)
      api_result = case response
      when "-1"
        "Invalid user and/or password or API is not allowed for your account"
      when "-10"
        "Unknown error (please contact our support dept.)"
      else
        "successful"
      end
    end
    
    def self.processed_reponse(response_result,response_body)
      [response_result,response_body]
    end
    
  end
end