class ProjectsController < ApplicationController
  # GET /projects
  def index
    @projects = Project.select("id, title, budget, final_deadline").all
    render json: @projects.to_json
  end

  # GET /projects/:id
  def show
    @project = Project.find(params[:id])
    render json: @project.to_json(:include => { :tasks => { :only => [:id, :description, :task_deadline] }})
  end	
end
