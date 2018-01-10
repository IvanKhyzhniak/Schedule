class CoursesController < ApplicationController
  def index
    @faculty ||= Faculty.find(params[:id])
    @courses ||= @faculty.courses
  end
end
