class ChatsController < ApplicationController

  def show
    @messages = Message.all
    @message = Message.new
    if Rails.env.production?
      @socket = "#{ENV["SOCKET_URL"]}/#{slug}"
    else
      @socket = "http://localhost:3000/#{slug}"
    end
  end

  helper_method :slug
  def slug
    params[:slug]
  end

end
