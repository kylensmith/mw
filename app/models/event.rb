class Event < ActiveRecord::Base
	has_many :groups, through: :group_events
	has_many :brackets
	has_many :group_events

end
