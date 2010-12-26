BlogOnRails::Application.routes.draw do
  devise_for :users

  resources :articles, :only => [:index, :show]

  root :to => "articles#index"
end
