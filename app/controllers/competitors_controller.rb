class CompetitorsController < ApplicationController
	def index
		@competitors = Competitor.all 
	end

	def new
		@competitor = Competitor.new
		
	end

	def create
		@competitor = Competitor.create(comp_data)
		# @competitor.save
	
		redirect_to request.referer	
	end

	def add
	end



	private
	def comp_data
		params.require(:competitor).permit(:lname, :fname, :team)
	end






end
