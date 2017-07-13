Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #lets use set of objects which is resources
  resources	:articles

  #set home page
  root	'welcome#index'
end
