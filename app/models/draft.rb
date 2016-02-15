class Draft < ActiveRecord::Base
	has_many :brackets, through: :events
	has_one :events
	has_one :user
	has_one :bracket
	has_one :competitor
	has_one :group
end
