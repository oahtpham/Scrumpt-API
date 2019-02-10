class StorySerializer < ActiveModel::Serializer
  attributes :id, :description, :title
  belongs_to :user
  belongs_to :sprint
  belongs_to :stage
end
