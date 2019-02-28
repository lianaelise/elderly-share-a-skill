class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def profile
    @student = Student.find(current_user.id)
  end


  def edit
    @student = Student.find(current_user.id)
  end

  def update
    @student = Student.find(current_user.id)
    @student.update(params_student)
    redirect_to profile_students_path
  end

  private

  def params_student
    params.require(:student).permit(:first_name, :last_name, :address, :phone_number, :bio, :picture)
  end
end
