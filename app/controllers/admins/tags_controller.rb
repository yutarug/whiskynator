class Admins::TagsController < ApplicationController
before_action :authenticate_admin!
	def index
		@tags=Tag.all
		@tag=Tag.new
	end
	def create
		@tag=Tag.new(tag_params)
		@tag.save
		redirect_to admins_tags_path
	end
	def edit
		@tag=Tag.find(params[:id])
		@bottles=Bottle.all
	end
	def update
		@tag=Tag.find(params[:id])
        @tag.update(tag_params)
        redirect_to admins_tag_path
	end
	def destroy
		@tag=Tag.find(params[:id])
		@tag.destroy
		redirect_to admins_tag_path
	end
	private
    def tag_params
        params.require(:tag).permit(:name,:explanation,:image)
    end
end
