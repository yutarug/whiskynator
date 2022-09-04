class Admins::BottleTagsController < ApplicationController
	def create
		tag=Tag.find(params[:tag_id])
		bottle_tag=BottleTag.new(tag_id:tag.id,bottle_id:params[:bottle_id])
		bottle_tag.save
		redirect_to edit_admins_tag_path(tag.id)
	end
	def destroy
		tag=Tag.find(params[:id])
		bottle_tag=BottleTag.where(tag_id:tag.id).find_by(bottle_id:params[:bottle_id])
		bottle_tag.destroy
		redirect_to edit_admins_tag_path(tag.id)
	end
end
