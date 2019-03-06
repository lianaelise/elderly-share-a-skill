class ChatChannel < ApplicationCable::Channel
  def subscribed
    Chat.involving(current_user).each do |chat|
      stream_from "chat_#{chat.id}"
    end
  end

  # Called when message-form contents are received by the server
  def send_message(payload)
    chat = Chat.find(payload["id"])

    message = Message.new(user: current_user, chat_id: payload["id"], body: payload["message"])

    return unless message.save

    ActionCable.server.broadcast "chat_#{payload['id']}", message: render_message(message)
    # byebug
    if chat.messages.count == 1
      ActionCable.server.broadcast "chat_#{payload['id']}", chat: render_chat(chat)
    end

    suggested_time = TimeCop.new(message.body).perform

    suggest_appointment(suggested_time, payload["id"]) if suggested_time
  end

  def suggest_appointment(suggested_time, chat_id)
    chat = Chat.find(chat_id)
    guest = chat.sender == current_user ? chat.recipient : chat.sender
    appointment = Appointment.new(
      organizer: current_user,
      guest: guest,
      start_time: suggested_time
    )

    sleep(1)

    ChatNotificationRelayJob.perform_later current_user.id, chat.id, render_suggestion(appointment, chat)
  end

  def unsubscribed
    stop_all_streams
  end

  private

  def render_chat(chat)
     ApplicationController.render(
          partial: 'chats/chat',
          locals: {chat: chat, user: current_user}
      )
  end

  def render_message(message)
    ApplicationController.render(
          partial: 'messages/message',
          locals: {message: message}
      )
  end

  def render_suggestion(appointment, chat)
    ApplicationController.render(
          partial: 'appointments/suggestion',
          locals: {chat: chat, appointment: appointment}
      )
  end

  def render_request(appointment)
    ApplicationController.render(
          partial: 'appointments/request',
          locals: {appointment: appointment, cable: true}
      )
  end
end
