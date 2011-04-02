Training::Application.routes.draw do
  get "home/index"
  root :to => "home#index"

  resources :weighings, :only => [:index, :new, :create]
  resources :repeat_activities, :only => [:index, :new, :create]
end
