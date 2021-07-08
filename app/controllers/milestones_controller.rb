class MilestonesController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create
  before_action :set_project

  def index
    @milestones = @project.milestones
  end

  def create
    @milestone = @project.milestones.create!(milestone_params)
    json_response(@milestone, :created)
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

   # remove `created_by` from list of permitted parameters
  def milestone_params
    params.permit(:title, :done)
  end
end
