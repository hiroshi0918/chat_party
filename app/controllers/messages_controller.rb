class MessagesController < ApplicationController
  def create
    message = Message.create(message_params)
    redirect_to "/users/#{message.user.id}"
  end

  protected

  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id)
  end
end
