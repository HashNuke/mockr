require 'bushido'

module Bushido
  def self.subscribe_to_events
    ::Bushido::Data.listen("mail.received") do |event|
      
      letter = Letter.new
      letter.payload = Time.now.to_s
      letter.save
    end
  end
end


Bushido.subscribe_to_events
