class CompetitorBracket < ActiveRecord::Base
	belongs_to :competitor
	belongs_to :bracket
end
