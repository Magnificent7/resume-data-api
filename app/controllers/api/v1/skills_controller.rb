class Api::V1::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render 'index.json.jbuilder'
  end

  def show
    @skills = Skill.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @skill = Skill.new(
      skill_name: params[:skill_name],
      student_id: params[:student_id]
    )
    if @skill.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @skill.errors.full_messages}, status: 422
    end
  end

  def update
    @skill = Skill.find(params[:id])
      @skill.update(
      skill_name: params[:skill_name],
      student_id: params[:student_id]
    )
    render 'show.json.jbuilder'
  end

  def destroy
    skill = Skill.find(params[:id])
    skill.destroy
    head :no_content, status: 204
  end
end
