class Poem < ApplicationRecord
  belongs_to :category
  belongs_to :poet
  has_one_attached :cover_image

  def next
    category.poems.where("id > ?", id).first
  end

  def prev
    category.poems.where("id < ?", id).last
  end
end
