class Area < ApplicationRecord
    has_one_attached :image
    has_many :bottles, dependent: :destroy
end
