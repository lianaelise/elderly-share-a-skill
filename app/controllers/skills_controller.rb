class SkillsController < ApplicationController
  def new
    @teacher = Teacher.find(params[:teacher_id])
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skills_params)
    @skill.teacher = Teacher.find(params[:teacher_id])
    @skill.save
    redirect_to teacher_path(@skill.teacher)
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    # @skill.teacher = Teacher.find(params[:teacher_id])
    @skill.update(skills_params)
    redirect_to teacher_path(@skill.teacher)
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to teacher_path(@skill.teacher)
  end

  private

  def skills_params
    params.require(:skills).permit(:name, :subject_id, :teacher_id)
  end
end
