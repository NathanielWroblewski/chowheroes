require 'modules/twilio'

class TwilioController < ApplicationController
  def create
    @client ||= Twilio.client
    Twilio.message(
            :client => @client, 
            :to => "+16502231243", 
            :body => Twilio::Messages::TEST)
    render :nothing => true, :status => :ok
  end

  def callback
    Rails.debug.logger params
    render :nothing => true, :status => :ok
  end
end
