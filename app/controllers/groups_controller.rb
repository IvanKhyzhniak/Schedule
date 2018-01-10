class GroupsController < ApplicationController
  def index
    @course ||= Course.find(params[:id])
    @groups ||= @course.groups
  end
end
