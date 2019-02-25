class AfterSignupController < ApplicationController
  include Wicked::Wizard

  steps :confirm_type, :confirm_first_name, :confirm_last_name, :confirm_phone_number, :confirm_email

  def show
    @user = current_user
  # case step
  # when :confirm_first_name
  #   @user = @user.first_name
  # end
    render_wizard
  end

  def update
    @user = current_user
    @user.update_attributes(wizard_params)
    # case step
    # when :confirm_type
    # @user.update_attributes(user_params)
    # when :first_name
    # @user = @user.first_name
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
    params.require(:teacher).permit(:type, :first_name)
  end

  def student_params
    params.require(:student).permit(:type, :first_name)
  end
end
