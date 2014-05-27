class ProjectsController < ApplicationController

  # GET /projects
  # GET /projects.json
  def index
    @grouped_projects = Project.all.group_by(&:event_type)
    @grouped_projects.each do |type, projects|
      p type
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
  end
end
