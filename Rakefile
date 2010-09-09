require 'rubygems'  
require 'rake'  
require 'echoe'  
require 'yard'
  
Echoe.new('eztexting', '0.3.0') do |p|  
  p.description     = "A Gem to make using eztexting simple and fun"  
  p.url             = "http://github.com/EzTexting/eztexting"  
  p.author          = "David Malin"  
  p.email           = "dmalin@eztexting.com"  
  p.ignore_pattern  = ["tmp/*", "script/*"]  
  p.development_dependencies = []  
  p.runtime_dependencies = ["httparty >=0.6.0"]
end  

YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']   # optional
  t.options = ['--any', '--extra', '--opts'] # optional
end

  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }