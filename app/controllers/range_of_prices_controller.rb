class RangeOfPricesController < ApplicationController
	def index
		@range_of_prices=RangeOfPrice.all
	end
	def show
		@range_of_price=RangeOfPrice.find(params[:id])
		@bottles=@range_of_price.bottles
	end
end
