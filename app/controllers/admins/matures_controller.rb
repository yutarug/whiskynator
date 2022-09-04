class Admins::MaturesController < ApplicationController
	before_action :authenticate_admin!
	def index
		@matures=Mature.all
		@mature=Mature.new
	end
	def create
		@mature=Mature.new(mature_params)
		@mature.save
		redirect_to admins_matures_path
	end
	def edit
		@mature=Mature.find(params[:id])
	end
	def update
		@mature=Mature.find(params[:id])
        @mature.update(mature_params)
        redirect_to admins_matures_path
	end
	def destroy
		@mature=Mature.find(params[:id])
		@mature.destroy
		redirect_to admins_matures_path
	end
	private
    def mature_params
        params.require(:mature).permit(:name,:image)
    end
end
