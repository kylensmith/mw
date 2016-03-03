class BracketDraft < ActiveRecord::Base
	belongs_to :projection
	belongs_to :draft
end
