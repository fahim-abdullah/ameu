Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'statics#home'
	get 'about', to: 'statics#about'
	get 'all_events', to: 'events#all_events'
	get 'all_members', to: 'members#all_members'


	resources :events
	resources :dialogues
	resources :members
	resources :econsiders

end