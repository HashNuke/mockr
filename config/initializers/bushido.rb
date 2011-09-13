if Devise::on_bushido?
  Bushido::Data.listen("email.received") do |email|
    
  end
end
