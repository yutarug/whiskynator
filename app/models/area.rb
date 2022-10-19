class Area < ApplicationRecord
    validates :name, presence: true
    validates :image, attached: true
    has_one_attached :image
    has_many :bottles, dependent: :destroy
end
