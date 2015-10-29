class Cocktail < ActiveRecord::Base
  has_many :ingredients, through: :doses # (pour avoir directement les ingrédients d'un cocktail en passant par les doses )
  has_many :doses, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end
