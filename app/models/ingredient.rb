class Ingredient < ApplicationRecord
  has_many :doses
  before_destroy :check_for_doses
  validates :name, presence: true, uniqueness: true

  private

  def check_for_doses
    doses.count.positive? ? 'cannot delete ingredient while a cocktail uses it' : false
  end
end
