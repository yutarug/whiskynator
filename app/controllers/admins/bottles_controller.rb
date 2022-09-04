class Admins::BottlesController < ApplicationController
before_action :authenticate_admin!
		def index
		@bottles=Bottle.all
		@new_bottle=Bottle.new
		@areas=Area.all
		@matures=Mature.all
	end
	def create
		@bottle=Bottle.new(bottle_params)
		@bottle.save
		redirect_to admins_bottles_path
	end
	def edit
		@bottle=Bottle.find(params[:id])
		@bottles=Bottle.all
	end
	def update
		@bottle=Bottle.find(params[:id])
        @bottle.update(bottle_params)
        redirect_to admins_bottles_path
	end
	def destroy
		@bottle=Bottle.find(params[:id])
		@bottle.destroy
		redirect_to admins_bottles_path
	end
	private
    def bottle_params
        params.require(:bottle).permit(:name,:explanation,:image,:area_id,:age,:option,:price,:mature_id)
    end
end
