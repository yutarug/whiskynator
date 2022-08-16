class TastesController < ApplicationController
	def index
		@tastes=Taste.all
	end
	def show
		@taste=Taste.find(params[:id])
		#一旦繰り返し処理をTaste.allで(本当はTasteに紐づくBottle)
		@bottles=Bottle.all
	end
end
