class MessagesController < ApplicationController
  def create
    @order = Order.find(params[:order_id])
    @message = Message.new(message_params)
    @message.order = @order
    @message.user = current_user
    authorize @message
    if @message.save
      OrderChannel.broadcast_to(
        @order,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok

    else
      render "orders/chatroom", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
