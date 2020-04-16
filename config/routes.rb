Rails.application.routes.draw do
  get 'welcome/index'
	 
  resources :players, :results do
  	resources :results
  end
root 'welcome#index'

end
