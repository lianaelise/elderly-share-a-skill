class AfterSignupController < ApplicationController
  include Wicked::Wizard
  steps :confirm_type, :confirm_first_name, :confirm_last_name, :confirm_phone_number, :confirm_address, :confirm_bio, :confirm_picture, :confirm_skill

  def show
    @user = current_user
    # case step
    # when :find_friends
    #   @friends = @user.find_friends
    # en

    render_wizard
  end

  def update
    @user = current_user
    @user.update_attributes(wizard_params)

    # case step
    # when :confirm_type
    #   @user.update_attributes(params[:user])
    # end
    sign_in(@user, bypass: true) # needed for devise

    render_wizard @user
  end

  private

  def wizard_params
    case @user.type
    when "Teacher"
      teacher_params
    when "Student"
      student_params
    else
      user_params
    end
  end

  def user_params
    params.require(:user).permit(:type)
  end

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :phone_number, :address, :email, :bio, :picture)
  end

  def student_params
      params.require(:student).permit(:first_name, :last_name, :phone_number, :address, :email, :bio, :picture)
  end
end
