class Publics::BottlesController < ApplicationController
	def show
		@bottle=Bottle.find(params[:id])
        @recommending_bottles=@bottle.followings
        @tags=@bottle.tags
	end
end
