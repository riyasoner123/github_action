class ProjectsController < ApplicationController
  before_action :authenticate_manager!, except: %w[index]
 
    def new
    @project=Project.new
  end
  
  def index
    @projects=Project.all
  end
  def create
    puts params[:project][:logo_image]
    @project=Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render :new
    end

  end
    def show
      @project=Project.find(params[:id])
      
    end

def edit
    @project = Project.find(params[:id])
  end

  def update
    @project=Project.find(params[:id])
    if @project.update(project_params)
      redirect_to @project
    else
      render :edit
      end
  end

  def destroy
    @project=Project.find(params[:id])
    @project.destroy
    redirect_to root_path
    
  end

def  signout
   current_manager_id=nil
    redirect_to root_path
end
def profile
 @manager=Manager.find(current_manager[:id])
 puts @manager

  
end


  private
  def project_params
    params.require(:project).permit(:title, :category, :description, :active, :start_date, :end_date, :duration, :tech_stack, :challenges, :priority, :git_url, :live_url)
  end
end
    
