class TwilioController < ApplicationController
  def create
    @client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"])
    @client.account.sms.messages.create(
        :from => '+17202599396',
        :to => '+16303346826',
        :body => 'Hot Sexy Singles in your local area. Join today for instant hot hookups. 25 days a day. Thanks for subscribing. Text cancel to cancel'
    )
    render :nothing => true, :status => :ok
  end

  def callback
    p params
    render :nothing => true, :status => :ok
  end
end
