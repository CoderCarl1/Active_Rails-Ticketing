class ProjectsController < ApplicationController
    before_action :find_project, only: [:show, :edit, :update, :destroy]

    def index
    end
    def show
    end
    def new
        @project = Project.new
    end
    def create
        @project = Project.new(project_params)
        if @project.save
            redirect_to @project, notice: "Project has been created."
        else
            render 'new', alert: "Project has NOT been created."
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
