class AreasController < ApplicationController
	def index
		@areas=Area.all
	end
	def show
		@area=Area.find(params[:id])
		#エリアに紐づいたボトルを表示
		@bottles=@area.bottles
	end
end
