class Ingredient < ActiveRecord::Base
  has_many :cocktails
  has_many :doses

  validates :name, uniqueness: true, presence: true
end
