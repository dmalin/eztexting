module Eztexting
  class Keywords < Base

    # Rent a keyword
    # @param [Hash] This requires alot of parameters in the hash you pass in. You need to pass in a full address, credit card with all the info and the keyword
    # @return [Array] The return is an array of two elements, the mapped error code according to the extexting and the raw response
    def self.rent(opts={})
      location = "/keyword/rent/"
      options = {
        :keyword => opts[:keyword],
        :firstname => opts[:first_name],
        :lastname => opts[:last_name],
        :address => opts[:address], 
        :city => opts[:city], 
        :state => opts[:state], 
        :zip => opts[:zip], 
        :country => opts[:country], 
        :type => opts[:cc_type], 
        :ccnumber => opts[:cc_number],
        :cccode => opts[:cc_verification_code], 
        :expm => opts[:cc_expiration_month], 
        :expy => opts[:cc_expiration_year]
      }
      
      response = self.do_post(location,options)
    end
    
    # Configure A Keyword
    # param [Hash] This requires only four keys, the keyword your targeting, its group, an autoreply and a url
    # @return [Array] The return is an array of two elements, the mapped error code according to the extexting and the raw response
    def self.configure
      location = "/keyword/setup"
      options = {
        :keyword => opts[:keyword],
        :group => opts[:group],
        :autoreply => opts[:autoreply],
        :url => opts[:url]
      }
      
      response = self.do_post(location,options)      
    end
    

    
  end
end