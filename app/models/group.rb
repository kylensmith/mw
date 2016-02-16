class Group < ActiveRecord::Base
	has_many :users, through: :invitations
	has_many :users, through: :directors
	has_many :events, through: :group_events
	has_many :group_events
	has_many :directors
	has_many :invitations
	has_many :competitors, through: :drafts
    
    has_many :drafts
    # has_many :events, through: :drafts

end
