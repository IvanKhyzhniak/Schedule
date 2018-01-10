class FacultiesController < ApplicationController
  def index
    @faculties ||= Faculty.all
  end
  
  def show
    @faculty ||= Faculty.find(params[:id])
    @courses ||= @faculty.courses
  end
end
