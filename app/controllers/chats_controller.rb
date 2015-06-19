class ChatsController < ApplicationController

  def show
    @messages = Message.all
    @message = Message.new
    @socket = "#{ENV["SOCKET_URL"]}/#{params[:slug]}"
  end

  helper_method :slug
  def slug
    params[:slug]
  end

end
