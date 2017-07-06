class Api::V1::CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all
    render 'index.json.jbuilder'
  end

  def show
    @capstone = Capstone.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @capstone = Capstone.new(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: params[:student_id]
    )
    if @capstone.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @capstone.errors.full_messages}, status: 422
    end
  end


  def update
    @capstone = Capstone.find(params[:id])
      @capstone.update(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: params[:student_id]
    )
    render 'show.json.jbuilder'

  end

  def destroy
    capstone = Capstone.find(params[:id])
    capstone.destroy
    head :no_content, status: 204
  end
end
