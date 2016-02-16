class Bracket < ActiveRecord::Base
	belongs_to :event
	# has_many :matches
	# has_many :competitors, through: :matches


	# Should this connect directly to populate the competitors?
	has_many :matches
	has_many :projections
	has_many :competitors, through: :competitor_brackets
	has_many :competitor_brackets
end

