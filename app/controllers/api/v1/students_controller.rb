class Api::V1::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def create
    
    
  end

  def update
    
  end

  def destroy
    
  end
end
