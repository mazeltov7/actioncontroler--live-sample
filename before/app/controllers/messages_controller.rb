class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def create
    @message = Message.create(attributes)
  end

  private

  def attributes
    params.require(:message).permit(:name, :content)
  end

end
