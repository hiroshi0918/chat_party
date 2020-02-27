class TopController < ApplicationController
 before_action :user_logged_in?
  def index
  end

  def user_logged_in?
    if user_signed_in?
      redirect_to chats_path
    end
  end

end
