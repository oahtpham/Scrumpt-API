class StorySerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :stage_id
  belongs_to :user
  belongs_to :sprint
  belongs_to :stage
end
