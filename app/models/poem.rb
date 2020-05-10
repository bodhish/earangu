class Poem < ApplicationRecord
  belongs_to :category
  belongs_to :poet
  has_one_attached :cover_image
end
