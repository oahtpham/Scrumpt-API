class Stage < ApplicationRecord
  has_many :stories
  has_many :sprints, through: :stories

end
