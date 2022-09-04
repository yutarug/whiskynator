class Admins::AreasController < ApplicationController
before_action :authenticate_admin!
	def index
		@areas=Area.all
		@area=Area.new
	end
	def create
		@area=Area.new(area_params)
		@area.save
		redirect_to admins_areas_path
	end
	def edit
		@area=Area.find(params[:id])
	end
	def update
		@area=Area.find(params[:id])
        @area.update(area_params)
        redirect_to admins_areas_path
	end
	def destroy
		@area=Area.find(params[:id])
		@area.destroy
		redirect_to admins_areas_path
	end
	private
    def area_params
        params.require(:area).permit(:name,:explanation,:image)
    end
end
