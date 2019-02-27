class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @teachers = Teacher.find_by_skill_or_subject(params[:query]).uniq
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
end
