module Twilio
  extend self
  module Messages
    TEST = 'Hot Sexy Singles in your local area. Join today for instant hot hookups. 25 days a day. Thanks for subscribing. Text cancel to cancel'
    CONFIRMATION = "Someone has approached you to pick up your donation. Please reply confirmation code to confirm" 
  end

  def client
    Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"])
  end
  
  def message(args)
    args[:client].account.sms.messages.create(
      :from => '+17202599396',
      :to   => args[:to],
      :body => args[:body])
  end

end
