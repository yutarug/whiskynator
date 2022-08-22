class TastesController < ApplicationController
	def index
		@tastes=Taste.all
	end
	def show
		@taste=Taste.find(params[:id])
		#一旦繰り返し処理をTaste.allで(本当はTasteに紐づくBottle)
		@bottles=Bottle.all
	end
	def admin_edit
		@tastes=Taste.all
	end
	def edit
		@taste=Taste.find(params[:id])
	end
	def update
		@taste=Taste.find(params[:id])
        @taste.update(taste_params)
        redirect_to root_path
	end

	private
    def taste_params
        params.require(:taste).permit(:name,:explanation,:image)
    end
end
