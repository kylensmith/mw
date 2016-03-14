Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # You can have the root of your site routed with "root"
  root 'users#index'
  # resources :profiles, :users, :groups, :events, :drafts, :directors, :competitors, :brackets, :admins
  get '/events/:event_id/brackets/:bracket_id/add' => 'brackets#add', as: :event_bracket_add

  get '/events/:event_id/brackets/:bracket_id/add_to_bracket/:competitor_id' => 'brackets#add_to_bracket'
	
	get '/groups/admin' => 'groups#admin', as: :group_admin
	
	get '/profile_edit' => 'profiles#profile_edit', as: :profile_edit

  post 'update_draft_selection' => 'drafts#update_draft_selection', as: :update_draft_selection
	
	resources :competitors, :profiles

	resources :events do
	  resources :brackets
	end

	resources :events do
	  resources :matches
	end

	# resources :brackets do
	#   resources :matches
	# end

	resources :brackets do
	  resources :competitors
	end

	resources :groups do
		resources :events do
	  		resources :drafts
		end
	end

	resources :groups do
		resources :events do
	  		resources :brackets
		end
	end







end

