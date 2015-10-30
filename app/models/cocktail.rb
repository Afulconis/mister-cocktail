class Cocktail < ActiveRecord::Base
  has_many :ingredients, through: :doses # (pour avoir directement les ingrédients d'un cocktail en passant par les doses )
  has_many :doses, dependent: :destroy

  validates :name, uniqueness: true, presence: true

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
