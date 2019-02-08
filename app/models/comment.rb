class Comment < ApplicationRecord
  belongs_to: :story, :user 

end
