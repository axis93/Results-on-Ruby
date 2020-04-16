Rails.application.routes.draw do
  get 'welcome/index'
	 
  resources :players

root 'welcome#index'
end
