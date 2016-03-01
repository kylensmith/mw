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



	def add
		@competitor = Competitor.new
		@comp = Competitor.all
		@cb = Bracket.find(params[:bracket_id]).competitors
	end

	def add_to_bracket
		@bracket = Bracket.find(params[:bracket_id])
		@comp = Competitor.find(params[:competitor_id])
		if !@bracket.competitors.include? @comp
			@bracket.competitors.push @comp
		end
		redirect_to :back
	end

	


end
