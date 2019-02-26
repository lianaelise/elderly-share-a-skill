class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @student = Student.find(current_user.id)
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appt_params)
    @teacher = Teacher.find(params[:teacher_id])
    @appointment.teacher = @teacher
    @appointment.student_id = current_user.id
    @appointment.status = "pending"
    if @appointment.valid?
      @appointment.save
      redirect_to my_appointments_appointments_path
    else
      render :new
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
    @teacher = Teacher.find(@appointment.teacher_id)
  end

  def update
    @teacher = Teacher.find(params[:teacher_id])
    @appointment = Appointment.find(params[:id])
    @appointment.update(appt_params)
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @teacher = Teacher.find(@appointment.teacher_id)
    @appointment.destroy
  end

  def my_appointments
    @appointments = Appointment.where(student_id: current_user.id)
  #   # (teacher_id: current_user.id).or
  end

  private

  def appt_params
    params.require(:appointment).permit(:start_time, :end_time, :teacher_id, :student_id)
  end
end
