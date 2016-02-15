class Competitor < ActiveRecord::Base
	has_many :matches_a, foreign_key: :first_competitor_id, class_name: 'Match'
	has_many :matches_b, foreign_key: :second_competitor_id, class_name: 'Match'
  	# has_many :brackets, through: :matches
  	has_many :brackets, through: :competitor_brackets
  	has_many :competitor_brackets
  	has_many :users
  	has_many :projections
  	# has_many :opponents, through: :matches
  	# has_many :opponents, :through => :matches, :source => 'competitors'

  	def all_matches
  		matches_a + matches_b
  	end
end


