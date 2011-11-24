require 'bushido'

module Bushido
  def self.subscribe_to_events
    ::Bushido::Data.listen("mail.received") do |event|
      letter = Letter.new
      logger.debug "{event.inspect}"

      letter.payload = event[:data].to_json
      letter.save
    end
  end
end
    
  
  
