class Story < ApplicationRecord
  belongs_to :user
  belongs_to :sprint
  belongs_to :stage
  has_many :comments

end
