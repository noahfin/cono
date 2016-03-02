class CategoriesController < ApplicationController
	def new
	end
	def index
		@post =  Post.where("category_id = ?", params[:id])
		
		

	end
	def create

	@category = Category.new(category_params)
		if @category.save
			redirect_to '/home'
		else 
			redirect_to 'login'
		end
	end
	private
		def category_params
			params.require(:categories).permit(:name).merge(user_id: current_user.id)
			
		end

end
