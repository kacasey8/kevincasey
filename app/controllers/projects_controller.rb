class ProjectsController < ApplicationController

  # GET /projects
  # GET /projects.json
  def index
    @grouped_projects = Project.all.group_by(&:event_type)
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
  end
end
