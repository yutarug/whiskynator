class BottlesController < ApplicationController
    def index
    end
    def show
        @bottle=Bottle.find(params[:id])
        @recommending_bottles=@bottle.followings
    end
    def admin_edit
        @bottles=Bottle.all
    end
    def edit
        @bottle=Bottle.find(params[:id])
    end
    def update
        @bottle=Bottle.find(params[:id])
        @bottle.update(bottle_params)
        redirect_to root_path
    end
    private
    def bottle_params
        params.require(:bottle).permit(:name,:explanation,:image)
    end
end
