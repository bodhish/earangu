class Poet < ApplicationRecord
  has_many :poems
  has_one_attached :avatar
end
