class Tag < ApplicationRecord
	validates :name, presence: true
	validates :image, attached: true
	has_one_attached :image
	has_many :bottle_tags, dependent: :destroy
	has_many :bottles,through: :bottle_tags

	def following?(other_bottle)
        self.bottle_tags.exists?(bottle_id:other_bottle.id)
    end
end
