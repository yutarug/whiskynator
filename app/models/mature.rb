class Mature < ApplicationRecord
	has_one_attached :image
	has_many :bottles
end
