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

    # has_many :groups, through: :drafts
    # has_many :drafts

    has_many :drafts, through: :competitor_drafts
    has_many :competitor_drafts

  	def all_matches
  		matches_a + matches_b
  	end
end

# Warning: Ignoring invalid association :groups on Competitor 
# (undefined method `class_name' for nil:NilClass)`

# Warning: Ignoring invalid association :drafts on Competitor 
# (Could not find the source association(s) "draft" or :drafts in model CompetitorBracket. Try 'has_many :drafts, :through => :competitor_brackets, :source => <name>'. Is it one of competitor or bracket?)


