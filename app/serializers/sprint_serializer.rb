class SprintSerializer < ActiveModel::Serializer
  attributes :id, :sprint_name, :deadline,  :color, :display, :description
  has_many :stories
end
