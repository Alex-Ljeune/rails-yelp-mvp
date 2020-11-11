class Review < ApplicationRecord
  belongs_to :restautant, foreign_key: 'restautant_id'
end
