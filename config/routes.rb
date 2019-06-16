Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'statics#home'
	get 'about', to: 'statics#about'
	get 'all_events', to: 'events#all_events'


	resources :events
	resources :dialogues
	resources :members

end