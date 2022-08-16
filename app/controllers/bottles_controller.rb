class BottlesController < ApplicationController
    def index
    end
    def show
        @bottle=Bottle.find(params[:id])
        @recommending_bottles=@bottle.followings
    end
end
