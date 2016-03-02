class HomeController < ApplicationController
	def index

	end
	def home
		@categories = Category.all

	end
end
