class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @teachers = Teacher.find_by_skill_or_subject(params[:query])
    else
      @teachers = Teacher.all
    end
    @markers = @teachers.map do |teacher|
      {
        lng: teacher.longitude,
        lat: teacher.latitude,
        infoWindow: "#{teacher.first_name} #{teacher.first_name}"
      }
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def profile
    @teacher = Teacher.find(current_user.id)
  end

  def edit
    @teacher = Teacher.find(current_user.id)
  end

  def update
    @teacher = Teacher.find(current_user.id)
    @teacher.update(params_teacher)
    redirect_to profile_teachers_path
  end

  private

  def params_teacher
    params.require(:teacher).permit(:first_name, :last_name, :address, :phone_number, :bio, :picture)
  end
end
