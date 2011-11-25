require 'bushido'

module Bushido
  def self.subscribe_to_events
    ::Bushido::Data.listen("mail.received") do |event|
      STDOUT.puts "=====MAIL RECEIVED===="
      STDOUT.puts "#{event.inspect}"
      STDOUT.puts "=====END-OF-MAIL======"
    end
  end
end

Bushido.subscribe_to_events
