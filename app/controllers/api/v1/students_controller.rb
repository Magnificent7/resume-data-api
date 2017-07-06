class Api::V1::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def show
    @student = Student.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo_url: params[:photo_url]
    )
    if @student.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @student.errors.full_messages}, status: 422
    end
  end


  def update
    @student = Student.find(params[:id])
      @student.update(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        password: params[:password],
        phone_number: params[:phone_number],
        short_bio: params[:short_bio],
        linkedin_url: params[:linkedin_url],
        twitter_handle: params[:twitter_handle],
        website_url: params[:website_url],
        resume_url: params[:resume_url],
        github_url: params[:github_url],
        photo_url: params[:photo_url]
    )
    render 'show.json.jbuilder'
  end

  def destroy
    
  end
end
