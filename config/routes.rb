Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
  get '/home/article', to: "articles#index"
  get '/home/comment/:id', to: "home#comment"
  get '/home/comments', to: "home#show_all_comments"
  # resources :articles
  	# get '/articles/shikha', to: "articles#index"
	resources :articles do
	  resources :comments
	end

end
