class ChatsController < ApplicationController
  # before_action :autenticate_user!

  def index
    @chats = Chat.involving(current_user)
  end

  def show
    @chats = Chat.involving(current_user)
    @chat = Chat.find(params[:id])
    @other_user = current_user == @chat.sender ? @chat.recipient : @chat.sender
    @messages = @chat.messages.order(created_at: :asc).last(20)
    @requests = current_user.received_appointments.pending
    @message = Message.new
  end

  def create
    @chat = Chat.between(params[:sender_id], params[:recipient_id]).first_or_create!(chat_params)
    redirect_to @chat
  end

  private

  def chat_params
    params.permit(:sender_id, :recipient_id)
  end
end
