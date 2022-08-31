class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: %i[show]

  def show
    authorize @chatroom
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
    authorize @chatroom
  end

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end
end
