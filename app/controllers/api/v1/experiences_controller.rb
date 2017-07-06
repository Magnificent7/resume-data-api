class Api::V1::ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render 'index.json.jbuilder'
  end

  def show
    @experience = Experience.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @experience = Experience.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      title: params[:title],
      company: params[:company],
      details: params[:details],
      student_id: params[:student_id]
    )
    if @experience.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @experience.errors.full_messages}, status: 422
    end
  end

  def edit
  end

  def update
    @experience = Experience.find(params[:id])
      @experience.update(
      start_date: params[:start_date],
      end_date: params[:end_date],
      title: params[:title],
      company: params[:company],
      details: params[:details],
      student_id: params[:student_id]
    )
    render 'show.json.jbuilder'

  end

  def destroy
    experience = Experience.find(params[:id])
    experience.destroy
    head :no_content, status: 204
  end
end
