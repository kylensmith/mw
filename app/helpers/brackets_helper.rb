module BracketsHelper
	def where_match(bracket_round, round_match, bracket_id)
		@match = Match.find_by(bracket_round: bracket_round, round_match: round_match, bracket_id: bracket_id)
		if @match
			@match
		else
		end
	end
		
		# Bracket.find(1).matches.each do |list|
		# 	@'rd_#{list.bracket_round}_match_#{list.round_match}'
		# end
end

		