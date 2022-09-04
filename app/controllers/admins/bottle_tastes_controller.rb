class Admins::BottleTastesController < ApplicationController
	def create
		taste=Taste.find(params[:taste_id])
		bottle_taste=BottleTaste.new(taste_id:taste.id,bottle_id:params[:bottle_id])
		bottle_taste.save
		redirect_to edit_admins_taste_path(taste.id)
	end
	def destroy
		taste=Taste.find(params[:id])
		bottle_taste=BottleTaste.where(taste_id:taste.id).find_by(bottle_id:params[:bottle_id])
		bottle_taste.destroy
		redirect_to edit_admins_taste_path(taste.id)
	end
end
