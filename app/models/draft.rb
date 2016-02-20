class Draft < ActiveRecord::Base
	# has_many :brackets, through: :events
	# has_one :event
	# has_one :user, through: :group
	# has_one :user
	# has_one :competitor
	# has_one :group
	belongs_to :bracket
	has_many :competitors, through: :competitor_drafts
  	has_many :competitor_drafts
  	has_many :brackets, through: :competitor_drafts
  	has_many :competitor_drafts
	# belongs_to :competitor
	belongs_to :user
	belongs_to :event
	# belongs_to :bracket
	belongs_to :group
end
