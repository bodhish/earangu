class Poem < ApplicationRecord
  belongs_to :category
  belongs_to :poet
end
