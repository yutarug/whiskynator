class RecommendationBottle < ApplicationRecord
	belongs_to :original_bottle,class_name: "Bottle"
	belongs_to :recommended_bottle,class_name: "Bottle"
end
