class Match < ActiveRecord::Base
	belongs_to :first_competitor, class_name: 'Competitor'
	belongs_to :second_competitor, class_name: 'Competitor'
	belongs_to :bracket, :class_name => "competitor"
	def all_competitors
		comps = []
		[first_competitor, second_competitor].each do |competitor|
			comps.push competitor if competitor.present?
		end
		comps
	end
end
