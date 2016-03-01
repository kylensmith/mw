module MatchesHelper
	def match_result
	    [
	      ['Fall', 1],
	      ['Tech', 2],
	      ['Maj Dec', 3],
	      ['Dec', 4],
	      ['Def', 5],
	      ['DQ', 6],
	      ['Med', 7]
	    ]
	end 

	def match_points(val)
		if !val.present?
			0.0
		elsif val == 1
			2.0
		elsif val ==2
			1.5
		elsif val == 3
			1.0
		elsif val == 4
			0.5
		elsif val > 4
			2.0
		end
	end


	def testpoint(val1)
		if !val1.present?
			val1 == 0
		end
		val1
	end

	def winner_options
	    [
	      ['First Competitor', 1],
	      ['Second Competitor', 2]     
	    ]
	end 

	def match_text(num)
		if num == 1
			"Fall"
		elsif num == 2
			"Tech"
		elsif num == 3
			"Maj Dec"
		elsif num == 4
			"Dec"
		elsif num == 5
			"Default"
		elsif num == 6
			"Disqualification"
		elsif num == 7
			"Medical"
		end
	end

	def round_text(val)
		if val == 100
			"Finals"
		elsif val == 101
			"Semis"
		elsif val == 102
		"Quarters"
		elsif val == 103
		"2nd Rd"
		elsif val == 104
		"1st Rd"
		elsif val == 104
		"Pig-Tail"
	elsif val == 200
			"Consi-Finals"
		elsif val == 201
		"Consi-Semi"
		elsif val == 202
		"Consi-Qtr"
		elsif val == 203
		"Pre-Consi-Qtr"
		
		end
	end

	def advancement
	    [
	      ['Champ', 1],
	      ['Champ w/ bye', 2],
	      ['Consi', 0.5],
	      ['Consi w/ bye', 1]
	]
	end 

	
# Note: these placement points are only for events that place the top eight athletes.
	def placement
		[
	      ['Champ', 16],
	      ['Runner-up', 12],
	      ['Third', 10],
	      ['Fourth', 9],
	      ['Fifth', 7],
	      ['Sixth', 6],
	      ['Seventh', 4],
	      ['Eighth', 3]
	]

	end





end



# 	def event_competitor
		
# 		@event.competitors.each do |comps|
# 			[] 
# 		end
# 	end
# end
