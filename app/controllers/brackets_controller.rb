class BracketsController < ApplicationController
	def index
	end

	def new
	
	end

	def create
	end

	def show
		@bracket = Bracket.find(params[:id])
	end

	


end
