class UsersController < ApplicationController
  def index
    @user = User.first
    render json: @user
  end

  def show
    @user = User.find_by(params[:id])
    render json: @user, include: ['chats', 'chats.messages']
    # @message = Message.first
    # render json: @user
  end
end
