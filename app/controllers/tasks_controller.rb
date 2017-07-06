class TasksController < ApplicationController
	before_action :find_item, only: [:show, :edit, :update, :destroy]

	def index
		@tasks = Task.all.order("created_at DESC")
	end

	def show
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to root_path
		else
			render 'new'
		end
	end


	private

	def task_params
		params.require(:task).permit(:title, :description)
	end

	def find_item
		@task = Task.find(params[:id])
	end
end