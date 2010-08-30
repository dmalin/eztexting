module Eztexting
  class Keywords < Base

    # Rent a keyword
    # Example:
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
    # Example:
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