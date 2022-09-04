class Taste < ApplicationRecord
	has_one_attached :image

	has_many :bottle_tastes
	has_many :bottles, through: :bottle_tastes
	def following?(other_bottle)
        self.bottle_tastes.exists?(bottle_id:other_bottle.id)
    end
end
