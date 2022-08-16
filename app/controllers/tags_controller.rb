class TagsController < ApplicationController
	def searched_word
		@tags=Tag.where("name LIKE ?","%#{params[:search_word]}%")
	end
	def show
		@tag=Tag.find(params[:id])
		@bottles=@tag.bottles
	end
end
