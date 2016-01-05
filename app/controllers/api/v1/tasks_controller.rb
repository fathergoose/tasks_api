class Api::V1::TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by id: params[:id]
  end

  def create
    @task = Task.create(description: params[:description])
    render :show
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
