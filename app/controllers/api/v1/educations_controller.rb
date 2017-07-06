class Api::V1::EducationsController < ApplicationController
  def index
    @educations = Education.all
    render 'index.json.jbuilder'
  end

  def show
    @education = Education.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
      student_id: params[:student_id]
    )
    if @education.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @education.errors.full_messages}, status: 422
    end
  end


  def update
    @education = Education.find(params[:id])
      @education.update(
        start_date: params[:start_date],
        end_date: params[:end_date],
        degree: params[:degree],
        university_name: params[:university_name],
        details: params[:details]
    )
    render 'show.json.jbuilder'

  end

  def destroy
    education = Education.find(params[:id])
    education.destroy
    head :no_content, status: 204
  end
end
