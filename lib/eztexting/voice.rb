module Eztexting
  class Voice < Base
    
    def self.broadcast
      location = "/voicemessages/"
      
      options = {
        :phonenumbers => phone_numbers,
        :soundsource => opts[:recording],
        :callerid => opts[:called_id]
      }
      self.do_post(location,options)
    end
    
  end
end