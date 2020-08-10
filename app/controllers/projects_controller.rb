class ProjectsController < ApplicationController
    before_action :find_project, only: [:show, :edit, :update, :destroy]

    def index
        @projects = Project.all
    end
    def show
    end
    def new
        @project = Project.new
    end
    def create
        @project = Project.new(project_params)
       
        if @project.save
         flash[:notice] = "Project has been created."
            redirect_to @project
        else
            flash.now[:alert] = "Project has not been created."
            render "new"
        end
    end
    def edit
    end
    def update
    end
    def destroy
    end

    private
    def project_params
        params.require(:project).permit(:name, :description)
    end

    def find_project
        @project = Project.find(params[:id])
    end
end
