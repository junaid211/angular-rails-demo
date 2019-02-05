Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, :defaults => {:format => :json} do
  	resources :contents, only: [:index]
  end

  # setting up the root entry point here.
  root 'welcome#index'
end
