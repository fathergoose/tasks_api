class Api::V1::TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by id: params[:id]
  end

  def create
    @task = Task.new(description: params[:description])
    if @task.save
    else
      render json: { errors: @task.errors.full_messages }, status: 422
    end
  end

  def update
    @task = Task.find_by( id: params[:id])
    @task.update(
      description: params[:description],
      complete: params[:complete]
    )
    render :show
  end

  def destroy
    Task.find_by(id: params[:id]).delete
    render :index
  end

end
