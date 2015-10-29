class Ingredient < ActiveRecord::Base
  has_many :cocktails, through: :doses # (si on veut showview pour ingredient : vodka.cocktail ça va nous donner tous les cocktails qui ont vodka, méthode raccourci)
  has_many :doses, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end
