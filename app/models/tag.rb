class Tag < ApplicationRecord
	has_one_attached :image
	has_many :bottle_tags
	has_many :bottles,through: :bottle_tags
end
