class HomeController < ApplicationController
	def index

	end
	def home
		@categories  =  Category.where("user_id = ?", current_user.id)
	    @posts =  Post.where("user_id = ?", current_user.id)
	  
	

	end
end
