class BracketsController < ApplicationController
	def index
	end

	def new
		if !current_user.admin.present?
			redirect_to root_path
		else
		@event = Event.find(params[:event_id])
		@bracket = Bracket.new

		end
	end


	def create
		if !current_user.admin.present?
			redirect_to root_path
		else
		@bracket = Bracket.create(bracket_info)
		@event = Event.find(params[:event_id])
		@event.brackets.push @bracket
		redirect_to :back
		end
	end

	def edit
		if !current_user.admin.present?
			redirect_to root_path
		else
		@event = Event.find(params[:event_id])
		@bracket = Bracket.find(params[:id])

		end
	end
	def update
		if !current_user.admin.present?
			redirect_to root_path
		else
		@bracket = Bracket.find(params[:id])
		@event = Event.find(params[:event_id])
		@bracket.update(bracket_info)
		redirect_to :back
		end
	end



	def show
		@bracket = Bracket.find(params[:id])
		@group = Group.find(params[:group_id])
		@event = Event.find(params[:event_id])
	end



	def add
		if current_user.admin.present?
		@competitor = Competitor.new
		@comp = Competitor.all
		@cb = Bracket.find(params[:bracket_id]).competitors
		@evname = Event.find(params[:event_id]).event_name 
		@brname = Bracket.find(params[:bracket_id]).name
		@brsponsor = Bracket.find(params[:bracket_id]).sponsor
	else
		redirect_to root_path

		end
	end

	def add_to_bracket
		@bracket = Bracket.find(params[:bracket_id])
		@comp = Competitor.find(params[:competitor_id])
		if !@bracket.competitors.include? @comp
			@bracket.competitors.push @comp
		end
		redirect_to :back
	end


	private 
	def bracket_info
		params.require(:bracket).permit(:name, :sponsor)
	end

end
