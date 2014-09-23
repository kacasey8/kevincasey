class ProjectsController < ApplicationController

  # GET /projects
  # GET /projects.json
  def index
    @languages = Project.all.pluck(:language).uniq
    if @languages.include? params[:language]
      projects = Project.where(language: params[:language])
      @languages << 'All'
    else
      projects = Project.all
    end
    @grouped_projects = projects.group_by(&:event_type)
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
  end
end
