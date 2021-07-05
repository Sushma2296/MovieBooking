class TheatreAdmin < ApplicationRecord
  belongs_to :theatre
  belongs_to :user
  
end
