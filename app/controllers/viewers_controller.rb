class ViewersController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create
  before_action :set_project

  def create
    @viewer = @project.viewers.create!(viewer_params)
    json_response(@viewer, :created)
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

   # remove `created_by` from list of permitted parameters
  def viewer_params
    params.permit(:name)
  end
end
