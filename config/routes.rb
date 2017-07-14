Rails.application.routes.draw do
  #get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #lets use set of objects which is resources
  resources :articles do
	 resources :comments
  end

  #set home page
  root	'articles#index'
end
