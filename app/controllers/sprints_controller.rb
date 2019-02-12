class SprintsController < ApplicationController
  def index
    @sprints = Sprint.all
    render json: @sprints
  end

  def create
    @sprint = Sprint.create(sprint_params)
    render json: @sprint, status: :created
  end

  def update
    @sprint.update(sprint_params)
    if @sprint.save
      render json: @sprint, status: :accepted
    else
      render json: { errors: @sprint.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    find_sprint
    render json: @sprint
  end

  def destroy
    find_sprint
    Sprint.all.delete(@sprint)
  end

  private

  def sprint_params
    params.permit(:sprint_name, :deadline, :color, :description)
  end

  def find_sprint
    @sprint = Sprint.find(params[:id])
  end
end
