class ChatsController < ApplicationController

  def show
    @messages = Message.all
    @message = Message.new
    session[:org_id] = Organization.find_by_name(slug).id if slug
    @orgs = current_user.organizations if current_user
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
