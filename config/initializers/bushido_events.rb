require 'bushido'

module Bushido
  def self.subscribe_to_events
    ::Bushido::Data.listen("mail.received") do |event|
      puts "#{event.inspect}"
      #letter = Letter.new
      #letter.payload = event[:data].to_json
      #letter.save
    end
  end
end


Bushido.subscribe_to_events
