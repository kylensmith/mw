class BracketDraftCompetitor < ActiveRecord::Base
	belongs_to :projection
	belongs_to :competitor
	belongs_to :bracket 
	belongs_to :draft
end
