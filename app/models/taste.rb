class Taste < ApplicationRecord
	has_many :bottle_tastes
	has_many :bottles, through: :bottle_tastes
end