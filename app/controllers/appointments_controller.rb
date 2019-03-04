class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:accept, :reject]

  def index
    @appointments = Appointment.where(organizer_id: current_user.id).or(Appointment.where(guest_id: current_user.id))
    @accepted_appt = @appointments.where(status: :accepted)
    @pending_appt = @appointments.where(status: :pending)
  end

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
    respond_to do |format|
      format.html { head :no_content }
      format.js  # <-- will render `app/views/appointments/accept.js.erb`
    end
  end

  def reject
    @appointment.update(status: :rejected)
    respond_to do |format|
      format.html { head :no_content }
      format.js  # <-- will render `app/views/appointments/reject.js.erb`
    end
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
