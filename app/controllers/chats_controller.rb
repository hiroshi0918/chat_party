class ChatsController < ApplicationController
  def index
    @user = User.all
    @hobby = Hobby.all
  end
end
