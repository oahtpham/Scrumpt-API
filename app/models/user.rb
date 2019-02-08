class User < ApplicationRecord
  has_many :stories
  has_many :comments, through: :stories
  has_many :sprints, through: :stories

end
