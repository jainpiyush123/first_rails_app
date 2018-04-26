Rails.application.routes.draw do
  resources :posts do
  	resources :comments do
  	  resources :replies
  	end
  end
  root 'posts#index'
end
