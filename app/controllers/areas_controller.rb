class AreasController < ApplicationController
	def index
		@areas=Area.all
	end
	def show
		@area=Area.find(params[:id])
		#エリアに紐づいたボトルを表示
		@bottles=@area.bottles
	end
	def admin_edit
		@areas=Area.all
	end
	def edit
		@area=Area.find(params[:id])
	end
	def update
		@area=Area.find(params[:id])
        @area.update(area_params)
        redirect_to root_path
	end

	private
    def area_params
        params.require(:area).permit(:name,:explanation,:image)
    end
end
