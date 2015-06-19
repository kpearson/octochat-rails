class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    Message.create(body: params[:message][:body])
    message = {body: params[:message][:body], org: params[:message][:slug]}
    REDIS.publish('channel', message.to_json)
    respond_to do |format|
      format.json { render json: { message: message } }
    end
  end
end
