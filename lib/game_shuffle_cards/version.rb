Dir[File.join(File.dirname(__FILE__),'*.rb')].each {|file| require file }

module GameShuffleCards
  VERSION = "1.0.0"
end
