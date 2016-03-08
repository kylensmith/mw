class DraftsController < ApplicationController
	def new
	# If there is not a draft (rich join table) then create one using a loop
	# for all the brackets joined to the event and populate with the
	# information that is available to associate the draft table without the
	# competitor selection.

		if !Draft.exists?(:user_id => current_user.id, :event_id => params[:event_id],  :group_id => params[:group_id])
		puts current_user.id
		puts params[:event_id]
		puts params[:group_id]
		puts "********* DRAFT ALREADY A RECORD *********"
		
		# If there is no draft for this group event, the it will create the draft.  It will also loop through the iteration for all of the brackets for that event to create an association for the event which can then be updated by the user.
		@draft = Draft.create(:user_id => current_user.id, :event_id => params[:event_id],  :group_id => params[:group_id])
		puts "******** CREATED RECORD **********"
		
		Event.find(params[:event_id]).brackets.each do |brackets|
				if CompetitorDraft.exists?(:draft_id => @draft.id, :bracket_id => brackets.id)
				else
					if !CompetitorDraft.exists?(:draft_id => @draft.id, :bracket_id => brackets.id)
					CompetitorDraft.create(:draft_id => @draft.id, :bracket_id => brackets.id)
					end
				end
			end
		end
		puts "******** Redirect Page **********"
		redirect_to group_event_path(params[:group_id], params[:event_id])
	end



	def create
		# @event = Event.find(:event_id)
		# @group = Group.find(:group_id)
		# @user = current_user.id

	end

	def edit
		@brackets = Draft.find(params[:id]).brackets
		@draft = Draft.find(params[:id])
		@team = @draft.competitors
		@event_id = params[:event_id]
		# @cd = CompetitorDraft.find(1)
		@group = params[:group_id]

	end

	def update_draft_selection
		@draft = params[:draft_id]
		competitor = Competitor.find(params[:competitor_id])
		# old_competitor = Competitor.find(params[:current_competitor_id])
		draft = Draft.find(params[:draft_id])
		@event_id = params[:event_id]
		join = CompetitorDraft.find_by(bracket_id: params[:bracket_id], draft_id: draft.id)
		puts "****************"
		
		puts "****************"
		puts params[:bracket_id]
		puts draft.id
		puts @event_id
		puts "****************"
		join.update(competitor_id: competitor.id, draft_id: draft.id)

			# draft.competitors.push competitor
			# draft.competitors.destroy old_competitor

		redirect_to :back
	end


	def show
		@user = current_user
		@brackets = Draft.find(params[:id]).brackets
		@draft = Draft.find(params[:id])
		@team = @draft.competitors
		@event_id = params[:event_id]
		@group_id = params[:group_id]
		@event = Event.find(@event_id)
		@group = Group.find(@group_id)
		# puts "*************"
		# puts @team.last.fname
		# puts "*************"
	end




end


