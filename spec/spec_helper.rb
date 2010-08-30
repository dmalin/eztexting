require File.expand_path(File.dirname(__FILE__) + "/../lib/eztexting")

require 'spec'

Spec::Runner.configure do |config|

end

# Redefine the do_post method so that it does not actually make an outgoing post, we are not interested in testing
# httpary, just the parameters passed in and how the method is called from other parts of the application
module Eztexting
  class Base
    
    def self.do_post(uri,options)
      return [uri,options]
    end

  end
end