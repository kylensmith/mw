class MatchesController < ApplicationController
	def new
		@matches = Match.new
		@ev = Event.find(params[:event_id])
		@event = Event.find(params[:event_id]).competitors
		@brackets = Event.find(params[:event_id]).brackets


	end

	 def edit
		@match = Match.find(params[:id])
		@ev = Event.find(params[:event_id])
		@competitors = @match.bracket.competitors
		@brackets = Event.find(params[:event_id]).brackets
	end

	def update
	end

	def create
		@test = params[:winner].to_i
		@match = Match.create(match_info)	
		puts "****************"
		puts params[:bracket_id]
		puts @match.bracket_id
		puts "****************"
		if @test
			if @test == 1
				@match.update(winning_competitor_id: @match.first_competitor_id)
			else @test == 2
				@match.update(winning_competitor_id: @match.second_competitor_id)
			end
		end
		redirect_to :back
	end

	private 
	def match_info
		params.require(:match).permit(:first_competitor_id, :first_competitor_team, :second_competitor_id, :second_competitor_team, :bracket_id, :winning_competitor_id, :bracket_round, :round_match, :result, :advancement_points, :placement_points, :tournament_match_number, :score)
	end

end
