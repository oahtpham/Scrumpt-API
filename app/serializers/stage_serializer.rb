class StageSerializer < ActiveModel::Serializer
  attributes :id, :stage_order, :stage_name
  has_many :stories
end
