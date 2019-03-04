class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:accept, :reject]

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.guest = Teacher.find(params[:teacher_id])
    @appointment.organizer = current_user
    if @appointment.save
      redirect_to teacher_path(params[:teacher_id])
    else
      render :new
    end
  end

  def accept
    if @appointment.update(status: :accepted)
      chat = Chat.between(@appointment.organizer, @appointment.guest).first
      ChatNotificationRelayJob.perform_later @appointment.organizer.id, chat.id, render_accepted if chat
    end
    head :no_content
  end

  def reject
    @appointment.update(status: :rejected)
    head :no_content
  end

  def my_appointments
    @appointments = Appointment.where(organizer_id: current_user.id).or(Appointment.where(guest_id: current_user.id))
    @not_pending_appt = @appointments.where.not(status: :pending)
    @pending_appt = @appointments.where(status: :pending)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:start_time, :teacher_id)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def render_accepted
    render_to_string(partial: "/appointments/accepted", locals: { appointment: @appointment })
  end
end
