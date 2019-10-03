Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'statics#landing'
	get 'landing', to: 'statics#landing'
	get 'home', to: 'statics#home'
	get 'about', to: 'statics#about'
	get 'contact', to: 'statics#contact'
	get 'thankyou', to: 'statics#thankyou'

	get 'summit', to: 'statics#summit'
	get 'under_development', to: 'statics#under_development'
	get 'all_events', to: 'events#all_events'
	get 'all_members', to: 'members#all_members'
	get 'all_econsiders', to: 'econsiders#all_econsiders'
	get 'all_dialogues', to: 'dialogues#all_dialogues'

	get 'ameuxadminsignup', to: 'users#new'
	resources :users, except: [:new]

	resources :events
	resources :dialogues
	resources :members
	resources :econsiders

end