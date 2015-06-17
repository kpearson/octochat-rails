class MessagesController < ApplicationConroller

  def index
    @messages = Message.all
  end
end
