class Restaurant < ApplicationRecord
  has_many :reviews, class_name: 'reviews', foreign_key: 'reference_id'
end
