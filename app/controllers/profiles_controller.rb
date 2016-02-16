class ProfilesController < ApplicationController
	def new
		@profile = Profile.new
	end

	def create
		# Currently will create a profile event if one is already associated.  Only the first will be associated.  The second one will float.
		@profile = Profile.create(profile_params)
		if @profile.save
			@profile.update(user_id: current_user.id)
		end
		 redirect_to root_path
	
	end

	private

	def profile_params
    	params.require(:profile).permit(:fname, :lname, :username, :city, :state, :mobile, :birthday, :bio)
  	end

end
