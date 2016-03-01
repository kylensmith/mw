module EventsHelper
	def draft_score(draft)
		score = 0
		draft = Draft.find(draft.to_i)
		draft.brackets.each do |bracket|
			bracket.matches.each do |match|
				if match.winning_competitor_id
					draft.competitors.each do |competitor|
						if competitor.id == match.winning_competitor_id
							match.advancement_points = 0 if match.advancement_points.nil?
							score += match.advancement_points
							score += match_points(match.result)
							match.placement_points = 0 if match.placement_points.nil?
							score += match.placement_points
						end
					end
				end	
			end
		end
		  score
	end
end
