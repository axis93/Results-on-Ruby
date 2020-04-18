Rails.application.routes.draw do
  get 'welcome/index'
	 
  resources :players, :results do
  	resources :players, :results
  end
root 'welcome#index'

end
