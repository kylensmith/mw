class ProfilesController < ApplicationController
	def new
		if !current_user.profile
		@profile = Profile.new
		else
			redirect_to root_path
		end
	end

	def profile_edit
		@profile = Profile.find(current_user.profile.id)
	end

	def update
		@profile = Profile.find(current_user.profile.id)
		@profile.update(profile_params)
		 redirect_to root_path
	
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
