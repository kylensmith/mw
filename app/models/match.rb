class Match < ActiveRecord::Base
	belongs_to :first_competitor, class_name: 'Competitor'
	belongs_to :second_competitor, class_name: 'Competitor'
	belongs_to :bracket, :class_name => "competitor"
	belongs_to :bracket
	has_one :event, through: :bracket
	# has_one :event, through: :event_matches
	has_one :event
	def all_competitors
		comps = []
		[first_competitor, second_competitor].each do |competitor|
			comps.push competitor if competitor.present?
		end
		comps
	end


	# State machine used to render integer to text for match results.

	results = ["Fall","Tech","Maj Dec"]

	def string_result
		result[@result]
	end

	

end
