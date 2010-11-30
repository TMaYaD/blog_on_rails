BlogOnRails::Application.routes.draw do
  devise_for :users

  resources :articles

end
