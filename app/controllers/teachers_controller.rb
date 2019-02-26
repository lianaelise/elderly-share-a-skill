class TeachersController < ApplicationController
  def index
    # @teachers = Teacher.all

    @teachers = Teacher.where.not(latitude: nil, longitude: nil)

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
