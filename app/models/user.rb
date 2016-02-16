class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_one :admin
	has_one :profile
	# has_many :drafts, through: :groups
	has_many :groups, through: :directors
	has_many :groups, through: :invitations
	has_many :directors
	has_many :invitations
	has_many :projections
	# has_many :competitors, through: :drafts
 #    has_many :drafts
	

end
