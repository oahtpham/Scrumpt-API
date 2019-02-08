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

  private

  def sprint_params
    params.permit(:name)
  end

  def find_sprint
    @sprint = Sprint.find(params[:id])
  end
end
