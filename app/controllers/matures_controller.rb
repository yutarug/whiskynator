class MaturesController < ApplicationController
	def index
		@matures=Mature.all
	end
	def show
		@mature=Mature.find(params[:id])
		@bottles=@mature.bottles
	end
end
