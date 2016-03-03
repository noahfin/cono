class HomeController < ApplicationController
	def index

	end
	def home
		@categories = Category.all
		@posts = Post.all
	

	end
end
