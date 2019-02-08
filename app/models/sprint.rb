class Sprint < ApplicationRecord
  has_many :stories
  has_many :stages, through: :stories
  has_many :users, through: :stories

end
