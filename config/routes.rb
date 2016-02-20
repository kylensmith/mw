Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # You can have the root of your site routed with "root"
  root 'users#index'
  # resources :profiles, :users, :groups, :events, :drafts, :directors, :competitors, :brackets, :admins

  post 'update_draft_selection' => 'drafts#update_draft_selection', as: :update_draft_selection
	
	resources :events do
	  resources :brackets
	end

	resources :events do
	  resources :matches
	end

	resources :brackets do
	  resources :matches
	end

	resources :brackets do
	  resources :competitors
	end

	resources :groups do
		resources :events do
	  		resources :drafts
		end
	end







end

