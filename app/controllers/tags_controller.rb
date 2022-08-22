class TagsController < ApplicationController
	def searched_word
		@tags=Tag.where("name LIKE ?","%#{params[:search_word]}%")
	end
	def show
		@tag=Tag.find(params[:id])
		@bottles=@tag.bottles
	end
	def admin_edit
		@tags=Tag.all
	end
	def edit
		@tag=Tag.find(params[:id])
	end
	def update
		@tag=Tag.find(params[:id])
        @tag.update(tag_params)
        redirect_to root_path
	end

	private
    def tag_params
        params.require(:tag).permit(:name,:explanation,:image)
    end
end
