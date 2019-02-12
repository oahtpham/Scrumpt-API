class StoriesController < ApplicationController
  def index
    @stories = Story.all
    render json: @stories
  end

  def create
    @story = Story.create(story_params)
    render json: @story, status: :created
  end

  def update
    @story.update(story_params)
    if @story.save
      render json: @story, status: :accepted
    else
      render json: { errors: @story.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :description, :stage_id, :sprint_id, :user_id)
  end

  def find_story
    @story = Story.find(params[:id])
  end
end
