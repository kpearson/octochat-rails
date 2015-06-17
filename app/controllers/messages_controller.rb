class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    message = Message.create(body: params[:message][:body])
    REDIS.publish('channel', message.to_json)
    respond_to do |format|
      format.js { render json: { message: message } }
    end
  end
end
