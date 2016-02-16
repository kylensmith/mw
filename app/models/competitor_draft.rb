class CompetitorDraft < ActiveRecord::Base
	belongs_to :draft
	belongs_to :competitor
end
