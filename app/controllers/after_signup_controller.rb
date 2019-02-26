class AfterSignupController < ApplicationController
  include Wicked::Wizard

  steps :confirm_type, :confirm_first_name, :confirm_last_name, :confirm_phone_number, :confirm_address, :confirm_bio, :confirm_picture, :confirm_subject, :confirm_skill

  def show
    @user = current_user
    case step
      when :confirm_subject
        skip_step if @user.type == 'Student'

      when :confirm_skill
        skip_step if @user.type == 'Student'

      @subjects = Subject.where(id: params[:subjects])
      @skills = @subjects.map { |subject| @user.skills.new(subject: subject) }
    end
    # case step
    # when :find_friends
    #   @friends = @user.find_friends
    # end
    render_wizard
  end

  def update
    @user = current_user
    case step
    when :confirm_subject
      sign_in(@user, bypass: true)
      jump_to(:confirm_skill, subjects: params[:subjects])
    else
      @user.update_attributes(wizard_params)
    end
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
    params.require(:teacher).permit(
      :first_name, :last_name, :phone_number, :address, :email, :bio, :picture,
      skills_attributes: [:id, :name, :subject_id, :_destroy]
    )
  end

  def student_params
      params.require(:student).permit(:first_name, :last_name, :phone_number, :address, :email, :bio, :picture)
  end

end
