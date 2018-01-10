class SubjectsController < ApplicationController
  def index
    @group    ||= Group.find params[:id]
    @subjects ||= @group.subjects
  end
  
  def new
    @subject = Subject.new
  end
  
  def create
    @subject = Subject.new(subject_params)
 
    until @subject.save
      render 'new'
    end
  end
  
  private
  
  def subject_params
    params.require(:article).permit(:name, :group_id, :date, :number, :teacher_id)
  end
  
end
