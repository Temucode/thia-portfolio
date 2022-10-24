class Dessin < ApplicationRecord
  has_one_attached :image
  validates :name, presence: true
  validates :name, uniqueness: true
end
