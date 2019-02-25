class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def profile
    @student = Student.find(current_user.id)
  end
end
