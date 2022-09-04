class Bottle < ApplicationRecord
    has_one_attached :image

    belongs_to :area
    # belongs_to :range_of_price
    belongs_to :mature

    has_many :bottle_tags
    has_many :tags,through: :bottle_tags

    has_many :bottle_tastes
    has_many :tastes,through: :bottle_tastes

    has_many :relationships, class_name:"RecommendationBottle",foreign_key:"original_bottle_id",dependent: :destroy
    has_many :reverse_of_relationships, class_name:"RecommendationBottle",foreign_key:"recommended_bottle_id",dependent: :destroy
    has_many :followings, through: :relationships,source: :recommended_bottle
    has_many :followers, through: :reverse_of_relationships,source: :original_bottle

    def following?(other_bottle)
        self.followings.include?(other_bottle)
    end
end
