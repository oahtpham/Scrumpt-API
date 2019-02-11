class SprintSerializer < ActiveModel::Serializer
  attributes :id, :sprint_name, :deadline,  :color, :display
  has_many :stories
end
