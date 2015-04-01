class Message < ApplicationController

  def index
    @message = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Successfully saved"
      redirect_to messages_path
    else
      render :new
    end
  end

private
  def message_params
    params.require(:message).permit(:to, :from, :body)
  end

end