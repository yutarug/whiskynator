class Admins::TastesController < ApplicationController
before_action :authenticate_admin!
	def index
		@tastes=Taste.all
		@taste=Taste.new
	end
	def create
		@taste=Taste.new(taste_params)
		@taste.save
		redirect_to admins_tastes_path
	end
	def edit
		@taste=Taste.find(params[:id])
		@bottles=Bottle.all
	end
	def update
		@taste=Taste.find(params[:id])
        @taste.update(taste_params)
        redirect_to admins_tastes_path
	end
	def destroy
		@taste=Taste.find(params[:id])
		@taste.destroy
		redirect_to admins_tastes_path
	end
	private
    def taste_params
        params.require(:taste).permit(:name,:explanation,:image)
    end
end
