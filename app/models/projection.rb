class Projection < ActiveRecord::Base
	belongs_to :user
	belongs_to :bracket
	belongs_to :competitor

end
