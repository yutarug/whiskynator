class Publics::TastesController < ApplicationController
	def index
		@tastes=Taste.all
	end
	def show
		@taste=Taste.find(params[:id])
		@bottles=@taste.bottles
	end
	private
    def taste_params
        params.require(:taste).permit(:name,:explanation,:image)
    end
end
