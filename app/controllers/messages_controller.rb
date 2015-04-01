class Message < ApplicationController

  def index
    @message = Message.all
  end
  



end
