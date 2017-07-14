Rails.application.routes.draw do
  devise_for :users
  #devise_for :users,  controllers: { registrations: 'users/registrations' }
  #get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #lets use set of objects which is resources
  resources :articles do
	 resources :comments
  end

  #set home page
  root	'articles#index'

  root to: 'home#index'
end
