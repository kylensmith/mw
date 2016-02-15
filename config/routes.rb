Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # You can have the root of your site routed with "root"
  root 'users#index'
  resources :profiles, :users, :matches, :groups, :events, :drafts, :directors, :competitors, :brackets, :admins

	resources :events do
	  resources :brackets
	end

	resources :brackets do
	  resources :matches
	end

	resources :brackets do
	  resources :competitors
	end



end

