class Admins::RecommendationBottlesController < ApplicationController
	def create
		bottle=Bottle.find(params[:original_bottle_id])
		recommendation_bottle=RecommendationBottle.new(original_bottle_id:bottle.id,recommended_bottle_id:params[:recommended_bottle_id])
		recommendation_bottle.save
		redirect_to edit_admins_bottle_path(bottle.id)
	end
	def destroy
		bottle=Bottle.find(params[:original_bottle_id])
		recommendation_bottle=RecommendationBottle.where(original_bottle_id:bottle.id).find_by(recommended_bottle_id:params[:id])
		recommendation_bottle.destroy
		redirect_to edit_admins_bottle_path(bottle.id)
	end

end
